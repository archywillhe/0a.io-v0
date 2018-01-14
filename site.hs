--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll

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

main :: IO ()
main = hakyll $ do
    match ("img/*" .||. "img/*/*" .||. "fonts/*") $ do
      route   idRoute
      compile copyFileCompiler

    match "css/*.css" $ do
        route   idRoute
        compile compressCssCompiler

    match "css/*.scss" $ do
        route   $ setExtension "css"
        compile compressScssCompiler

    match ("posts/chapter1/featured/*" .||. "posts/chapter1/more/*" .||. "posts/chapter2/*") $ do
        route $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/post.html"    timedCtx
            >>= loadAndApplyTemplate "templates/default.html" timedCtx
            >>= relativizeUrls
    match "posts/other/*" $ do
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/page-session.html" timedCtx
            >>= relativizeUrls
    createRowOf3Session "2018-01-01-chapter2.html" "posts/chapter2/*" "Chapter 2" "jan 2018 ~" "1001"
    createRowOf3Session "2014-09-01-chapter1.html" "posts/chapter1/featured/*" "Chapter 1" "sep 2014 ~ nov 2015" "1001"
    -- create ["chapter2.html"] $ do
    --   compile $ do
    --       posts <- recentFirst =<< loadAll "posts/chapter2/*"
    --       let archiveCtx =
    --               rowsOf3 posts "row" `mappend`
    --               constField "maintitle" "Chapter 2" `mappend`
    --               constField "subtitle" "jan 2018 ~" `mappend`
    --               constField "width" "1001" `mappend`
    --               defaultContext
    --       makeItem ""
    --           >>= loadAndApplyTemplate "templates/rows-of-three.html" archiveCtx
    --           >>= loadAndApplyTemplate "templates/page-session.html" archiveCtx
    --           >>= relativizeUrls

    create ["index.html"] $ pageOfSessions ["2018-01-01-chapter2.html","posts/other/gap-year.md", "2014-09-01-chapter1.html"]
    --
    -- create ["index.html"] $ do
    --   route idRoute
    --   compile $ do
    --       chapter1 <- load "chapter1.html"
    --       let indexCtx =
    --                 constField "chapter1" chapter1 `mappend`
    --                 defaultContext
    --
    --       makeItem ""
    --         >>= loadAndApplyTemplate "templates/rows-of-three.html" archiveCtx
    --         >>= relativizeUrls

    -- match "pages/*" $ do
    --     route (gsubRoute "pages/" (const ""))
    --     compile $ do
    --         posts <- recentFirst =<< loadAll "posts/*"
    --         let indexCtx =
    --                 listField "posts" timedCtx (return posts) `mappend`
    --                 constField "title" "Home"                `mappend`
    --                 defaultContext
    --
    --         getResourceBody
    --             >>= applyAsTemplate indexCtx
    --             >>= loadAndApplyTemplate "templates/default.html" indexCtx
    --             >>= relativizeUrls

    match "templates/*" $ compile templateBodyCompiler

-----

createRowOf3Session identifer filePath maintitle subtitle width = create [identifer] $ do
  compile $ do
      posts <- recentFirst =<< loadAll filePath
      let archiveCtx =
              rowsOf3 posts "row" `mappend`
              constField "maintitle" maintitle `mappend`
              constField "subtitle" subtitle `mappend`
              constField "width" width `mappend`
              dateField "date" "%d %b %Y" `mappend`
              defaultContext
      makeItem ""
          >>= loadAndApplyTemplate "templates/rows-of-three.html" archiveCtx
          >>= loadAndApplyTemplate "templates/page-session.html" archiveCtx
          >>= relativizeUrls

------
pageOfSessions identifiers = do
  route idRoute
  compile $ do
      sessions <- recentFirst =<< loadAll (fromList $ [fromFilePath i | i <- identifiers])
      let indexCtx =
              listField "sessions" timedCtx (return sessions) `mappend`
              defaultContext
      makeItem ""
          >>= applyAsTemplate indexCtx
          >>= loadAndApplyTemplate "templates/session-loop.html" indexCtx
          >>= loadAndApplyTemplate "templates/default.html" indexCtx
          >>= relativizeUrls

---------

rowsOf3od :: Int -> [a] -> ([a],[a],[a]) -> ([a],[a],[a])
rowsOf3od 0 (x:xs) (r0,r1,r2) = rowsOf3od 1 xs (x:r0,r1,r2)
rowsOf3od 1 (x:xs) (r0,r1,r2) = rowsOf3od 2 xs (r0,x:r1,r2)
rowsOf3od 2 (x:xs) (r0,r1,r2) = rowsOf3od 0 xs (r0,r1,x:r2)
rowsOf3od _ [] (r0,r1,r2)         = (reverse r0, reverse r1, reverse r2)

rowsOf3 :: [Item String] -> String -> Context String
rowsOf3 list identifier = foldl mappend defaultContext contexts
  where
    contexts = [listField (identifier ++ show num) timedCtx (return items) | (items,num) <- [(r0,0),(r1,1),(r2,2)]]
    (r0,r1,r2) = rowsOf3od 0 list ([],[],[])

--------------------------------------------------------------------------------
timedCtx :: Context String
timedCtx =
    dateField "date" "%d %b %Y" `mappend`
    defaultContext
