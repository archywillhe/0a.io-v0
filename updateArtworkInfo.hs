module Main where

import System.Directory
import Data.List.Split
import System.IO
import Control.Monad
import Data.List
import qualified Data.Text as T

tyaToYaml (t:y:a:_) = "---\n" ++
    "title: \"" ++ t ++ "\"\n" ++
    "year: \"" ++ y ++ "\"\n" ++
    "author: \"" ++ a ++ "\"\n" ++
    "---"
tyaToYaml a = head a

main :: IO ()
main = do
    files <- listDirectory "img/covers/"
    let formatting str = T.unpack $ foldl (\str (x,y) -> T.replace (T.pack x) (T.pack y) str) (T.pack str) [("_perc", "%"),("_comma",","),("_hash","#"),("Rene","René")]
    let paintings = map (\a -> take (length a - 4) a) $ filter (\a -> isSuffixOf ".jpg" a) files
    let titleYearAuthorList = [map formatting (splitOn ", " painting) | painting <- paintings]
    zipWithM_ writeFile (map ((\a -> "artwork-info/" ++ a ++ ".md") . head) titleYearAuthorList) (map tyaToYaml titleYearAuthorList)
