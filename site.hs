--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll
import System.Directory
import Data.List.Split
import System.IO
import Control.Monad
import Data.List
import qualified Data.Text as T
import Text.Regex
import           Text.Pandoc.Options

pandocOptions = defaultHakyllWriterOptions{ writerHTMLMathMethod = MathJax "" }

--------------------------------------------------------------------------------
timedCtx :: Context String
timedCtx =
    dateField "date" "%d %b %Y" `mappend`
    defaultContext

--------------------------------------------------------------------------------
compressScssCompiler :: Compiler (Item String)
compressScssCompiler = do
  fmap (fmap compressCss) $
    getResourceString
    >>= withItemBody (unixFilter "sass" [ "-s"
                                        , "--scss"
                                        , "--style", "compressed"
                                        , "--load-path", "css"
                                        ])

--------------------------------------------------------------------------------
main :: IO ()
main = do
    updateArtworkInfo
    updateMusicDir
    musicInnerDirs <- listDirectory "music-for-work"
    hakyll $ do
        match ("archy.asc" .||. "img/*" .||. "img/*/*" .||. "fonts/*" .||. "js/*") $ do
          route   idRoute
          compile copyFileCompiler

        match "css/*.css" $ do
            route   idRoute
            compile compressCssCompiler

        match "css/*.scss" $ do
            route   $ setExtension "css"
            compile compressScssCompiler

        match ("posts/chapter1/featured/*" .||. "posts/chapter1/more/*" .||. "posts/chapter2/*" .||. "posts/old-blog/*") $ do
            route $ setExtension "html"
                `composeRoutes` gsubRoute "(posts/|[0-9]+-[0-9]+-[0-9]+-|featured/|more/)" (const "")
            compile $ pandocCompilerWith defaultHakyllReaderOptions pandocOptions
                >>= loadAndApplyTemplate "templates/post.html"    timedCtx
                >>= loadAndApplyTemplate "templates/default.html" timedCtx
                >>= relativizeUrls

        match "posts/other/*" $ do
            compile $ pandocCompiler
                >>= loadAndApplyTemplate "templates/simple-archy-item.html" timedCtx
                >>= loadAndApplyTemplate "templates/page-session.html" timedCtx
                >>= relativizeUrls

        match ("music-for-work/*/*" .||. "artwork-info/*") $ do
            compile $ pandocCompiler
                >>= relativizeUrls

        createRowOf3Session "2018-01-02-chapter2.html" "posts/chapter2/*" "Chapter 2" "jan 2018 ~ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" "1001"
        createRowOf3Session "2014-09-01-chapter1.html" "posts/chapter1/featured/*" "Chapter 1" "sep 2014 ~ nov 2015" "1001"
        createRowOf3Session "2014-09-01-more-from-chapter1.html" "posts/chapter1/more/*" "More Posts from Chapter 1" "posts that didn't make it to the home page" "1001"
        createRowOf3SessionWithoutTimeCtx "2018-01-01-artwork.html" "artwork-info/*" "Artwork Info" "" "1040"

        -- create ["index.html"] $ page "home" "isTech" "Tech" ["posts/other/coming-soon.html"]
        create ["index.html"] $ page "home" "isBlog" "Blog" ["2018-01-02-chapter2.html","posts/other/gap-year.md", "2014-09-01-chapter1.html"]
        create ["chapter1/index.html"] $ page "home" "isBlog" "Chapter 1" ["2014-09-01-chapter1.html","2014-09-01-chapter1.html"]
        create ["chapter2/index.html"] $ page "home" "isBlog" "Chapter 2" ["2018-01-01-chapter2.html"]
        create ["more-from-chapter1/index.html"] $ page "home-sub" "" "More FromChapter 1" ["2014-09-01-more-from-chapter1.html"]
        create ["artwork-info.html"] $ page "home"  "isArtworkInfo" "Artwork Info" ["2018-01-01-artwork.html"]
        createPageOfSessionsBasedOnDirectoryStructure "home" "isMusicForWork" "music-for-work" "Music For Work" musicInnerDirs
        create ["about.html"] $ page "home-sub" "" "About Me" ["posts/other/letter.md","posts/other/other-stuff.md"]
        create ["about-zer0-degree.html"] $ page "home-sub" "" "About Zer0 Degree" ["posts/other/about-zer0-degree.md", "posts/other/letter.md","posts/other/other-stuff.md"]

        match "templates/*" $ compile templateBodyCompiler

-----

createRowOf3SessionWithoutTimeCtx = createRowOf3Session_ defaultContext return

createRowOf3Session = createRowOf3Session_ timedCtx recentFirst

createRowOf3Session_ ctx postPossessing identifer filePath maintitle subtitle width = create [identifer] $ do
  compile $ do
      posts <- postPossessing =<< loadAll filePath
      let archiveCtx =
              rowsOf3 posts "row" ctx `mappend`
              constField "maintitle" maintitle `mappend`
              constField "subtitle" subtitle `mappend`
              constField "width" width `mappend`
              ctx
      makeItem ""
          >>= loadAndApplyTemplate "templates/rows-of-three.html" archiveCtx
          >>= loadAndApplyTemplate "templates/page-session.html" archiveCtx
          >>= relativizeUrls

-----

createPageOfSessionsBasedOnDirectoryStructure pageType isX dirPath title innerDirs= do
    let createSessionByDir subdir = createRowOf3Session (fromFilePath (subdir++".html")) (fromGlob (dirPath++"/"++subdir++"/*")) (drop 11 subdir) "" "900"
    mapM_ createSessionByDir innerDirs
    create [fromFilePath (dirPath ++ ".html")] $ page pageType isX title [subdir++".html" | subdir <- innerDirs]

------
page = page_ (\a -> return)
page_ moreTemplating pageType isX title sessions = do
  route idRoute
  compile $ do
      sessions <- recentFirst =<< loadAll (fromList $ [fromFilePath s | s <- sessions])
      let indexCtx =
              listField "sessions" timedCtx (return sessions) `mappend`
              constField isX "true" `mappend`
              constField "title" title `mappend`
              constField "pageType" pageType `mappend`
              defaultContext
      makeItem ""
          >>= applyAsTemplate indexCtx
          >>= loadAndApplyTemplate "templates/session-loop.html" indexCtx
          >>= loadAndApplyTemplate (fromFilePath ("templates/"++pageType++".html")) indexCtx
          >>= moreTemplating indexCtx
          >>= loadAndApplyTemplate "templates/default.html" indexCtx
          >>= relativizeUrls

---------

rowsOf3od :: Int -> [a] -> ([a],[a],[a]) -> ([a],[a],[a])
rowsOf3od 0 (x:xs) (r0,r1,r2) = rowsOf3od 1 xs (x:r0,r1,r2)
rowsOf3od 1 (x:xs) (r0,r1,r2) = rowsOf3od 2 xs (r0,x:r1,r2)
rowsOf3od 2 (x:xs) (r0,r1,r2) = rowsOf3od 0 xs (r0,r1,x:r2)
rowsOf3od _ [] (r0,r1,r2)         = (reverse r0, reverse r1, reverse r2)

rowsOf3 list identifier ctx = foldl mappend defaultContext contexts
  where
    contexts = [listField (identifier ++ show num) ctx (return items) | (items,num) <- [(r0,0),(r1,1),(r2,2)]] ++
        [listField "everything" ctx (return list)]
    (r0,r1,r2) = rowsOf3od 0 list ([],[],[])

---------
makeArtworkYaml (title:year:author:paintingURL:[]) = "---\n" ++
    "title: \"" ++ title ++ " (" ++ year ++ ")\"\n" ++
    "subtitle: \"" ++ author ++ "\"\n" ++
    "displayImg: \"" ++ paintingURL ++ "\"\n" ++
    "noURL: true\n" ++
    "---"
makeArtworkYaml wrongformat = show wrongformat

makeMusicYaml (title:artist:link:imgURL:virtualDate:[]) = "---\n" ++
    "title: \"" ++ title ++ "\"\n" ++
    "subtitle: \"" ++ artist ++ "\"\n" ++
    "customForwardUrl: \"" ++ link ++ "\"\n" ++
    "displayImg: \"" ++ imgURL ++ "\"\n" ++
    "date: \"" ++ virtualDate ++ "\"\n" ++
    "newTab: true \n" ++
    -- "imageWidth: \"640px\" \n" ++
    -- "imageHeight: \"480px\" \n" ++
    -- "lazyload: true \n" ++
    "---"
makeMusicYaml wrongformat = show wrongformat

updateArtworkInfo = do
    empty "artwork-info"
    files <- listDirectory "img/covers"
    let paintings = map (\a -> take (length a - 4) a) $ filter (\a -> isSuffixOf ".jpg" a) files
    let paintingData = [ (splitOn ", " dataString) ++ ["img/covers/" ++ dataString ++ ".jpg"] | dataString <- paintings ]
    propagate "artwork-info" paintingData makeArtworkYaml


updateMusicDir = do
    putStr "Updating music dir\n"
    empty "music-for-work"
    txt <- readFile "music-for-work.archy"
    let linesOfTxt = lines txt
    let metaData = splitOn ", " (linesOfTxt !! 0)
    putStr ("With metadata\n" ++ show metaData ++ "\n")
    let dirs = map (\(datum,num) -> "music-for-work/"++(virtualDateForOrdering num) ++ "-" ++ datum) (zipWidthIndex metaData)
    mapM_ createDirectory dirs
    putStr ("Creating directorires\n" ++ show dirs ++ "\n")
    let getYoutubeThumbnail (Just (vidId:_)) = "https://img.youtube.com/vi/"++vidId++"/0.jpg"
    let getYoutubeId link = matchRegex (mkRegex "watch\\?v=([^&]+)") link
    let musicDataFormating (musicData@(title:artist:link:[]),nth) = musicDataFormating $ (musicData ++ [(getYoutubeThumbnail $ getYoutubeId link)], nth)
        musicDataFormating (musicData,nth) = musicData ++ [virtualDateForOrdering nth]
    let musicData = [ map musicDataFormating $ zipWidthIndex [splitOn ", " singleItemDataString  | singleItemDataString <- musicGenreList] | musicGenreList <- splitOn [""] (tail $ tail linesOfTxt)]
    mapM_ (\(dir,dataStrings) -> propagate dir dataStrings makeMusicYaml) $ zip dirs musicData

zipWidthIndex :: [a] -> [(a,Int)]
zipWidthIndex list = (zip list $ reverse [0..(length list)])

------------------

propagate folder dataLists dataToFile = do
    let formatting str = T.unpack $ foldl (\str (x,y) -> T.replace (T.pack x) (T.pack y) str) (T.pack str) [("_perc", "%"),("_comma",","),("_hash","#"),("Rene","René")]
    let formated = map (\dataList -> ((map formatting) . init) dataList ++ [last dataList]) dataLists
    zipWithM_ writeFile (map ((\a -> folder ++ "/" ++ a ++ ".md") . head) formated) (map dataToFile formated)

------------------
virtualDateForOrdering n = "2018-01-" ++ (date (n + 1))
    where date m = if m < 10
            then "0"++(show m) else (show m)
--------

empty dir = do
    removePathForcibly dir
    createDirectory dir
    putStr ("Emptying directory " ++ dir ++"\n")
