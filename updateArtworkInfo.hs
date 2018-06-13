import qualified Data.Text as T
import System.Directory
import Data.List.Split
import System.IO
import Control.Monad
import Data.List
import Text.Regex

makeArtworkYaml (title:year:author:paintingURL:[]) = "---\n" ++
    "title: \"" ++ title ++ "\"\n" ++
    "year: \"" ++ year ++ "\"\n" ++
    "subtitle: \"" ++ author ++ "\"\n" ++
    "displayImg: \"" ++ paintingURL ++ "\"\n" ++
    "noURL: true\n" ++
    "isArtworkInfo: true\n" ++
    "---"
makeArtworkYaml wrongformat = show wrongformat

extractPaintingInfo infoType str = formattingImgStr $ extractPainting_ infoType $ splitOn ", " str
extractPainting_ "author" (title:year:author:[]) = author
extractPainting_ "title"(title:year:author:[]) = title
extractPainting_ "year" (title:year:author:[]) = year
extractPainting_ _ _ = "something went wrong"

-- makeMusicYaml (title:artist:link:imgURL:virtualDate:[]) = "---\n" ++
--     "title: \"" ++ title ++ "\"\n" ++
--     "subtitle: \"" ++ artist ++ "\"\n" ++
--     "customForwardUrl: \"" ++ link ++ "\"\n" ++
--     "displayImg: \"" ++ imgURL ++ "\"\n" ++
--     "date: \"" ++ virtualDate ++ "\"\n" ++
--     "newTab: true \n" ++
--     -- "imageWidth: \"640px\" \n" ++
--     -- "imageHeight: \"480px\" \n" ++
--     -- "lazyload: true \n" ++
--     "---"
-- makeMusicYaml wrongformat = show wrongformat

updateArtworkInfo = do
    -- empty "artwork-info"
    files <- listDirectory "img/covers"
    let paintings = map (\a -> take (length a - 4) a) $ filter (\a -> isSuffixOf ".jpg" a) files
    let paintingData = [ (splitOn ", " dataString) ++ ["img/covers/" ++ dataString ++ ".jpg"] | dataString <- paintings ]
    propagate "artwork-info" paintingData makeArtworkYaml
    putStr ("done " ++ "\n")


-- updateMusicDir = do
--     putStr "Updating music dir\n"
--     empty "music-for-work"
--     txt <- readFile "music-for-work.archy"
--     let linesOfTxt = lines txt
--     let metaData = splitOn ", " (linesOfTxt !! 0)
--     putStr ("With metadata\n" ++ show metaData ++ "\n")
--     let dirs = map (\(datum,num) -> "music-for-work/"++(virtualDateForOrdering num) ++ "-" ++ datum) (zipWidthIndex metaData)
--     mapM_ createDirectory dirs
--     putStr ("Creating directorires\n" ++ show dirs ++ "\n")
--     let getYoutubeThumbnail (Just (vidId:_)) = "https://img.youtube.com/vi/"++vidId++"/0.jpg"
--     let getYoutubeId link = matchRegex (mkRegex "watch\\?v=([^&]+)") link
--     let musicDataFormating (musicData@(title:artist:link:[]),nth) = musicDataFormating $ (musicData ++ [(getYoutubeThumbnail $ getYoutubeId link)], nth)
--         musicDataFormating (musicData,nth) = musicData ++ [virtualDateForOrdering nth]
--     let musicData = [ map musicDataFormating $ zipWidthIndex [splitOn ", " singleItemDataString  | singleItemDataString <- musicGenreList] | musicGenreList <- splitOn [""] (tail $ tail linesOfTxt)]
--     mapM_ (\(dir,dataStrings) -> propagate dir dataStrings makeMusicYaml) $ zip dirs musicData

zipWidthIndex :: [a] -> [(a,Int)]
zipWidthIndex list = (zip list $ reverse [0..(length list)])

------------------

formattingImgStr str = T.unpack $ foldl (\str (x,y) -> T.replace (T.pack x) (T.pack y) str) (T.pack str) [("_perc", "%"),("_comma",","),("_hash","#"),("Rene","René")]
propagate folder dataLists dataToFile = do
    let formated = map (\dataList -> ((map formattingImgStr) . init) dataList ++ [last dataList]) dataLists
    zipWithM_ writeFileIfDoesntExist (map ((\a -> folder ++ "/" ++ a ++ ".md") . head) formated) (map dataToFile formated)

writeFileIfDoesntExist fileName content = do
    fileExist <- doesFileExist fileName
    if not fileExist
    then writeFile fileName content
    else return ()

------------------
virtualDateForOrdering n = "2018-01-" ++ (date (n + 1))
    where date m = if m < 10
            then "0"++(show m) else (show m)
--------

empty dir = do
    removePathForcibly dir
    createDirectory dir
    putStr ("Emptying directory " ++ dir ++"\n")

main = updateArtworkInfo
