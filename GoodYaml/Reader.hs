-- Reads input string from given yaml file or
module Reader where

import Data.Text
import System.Environment
import System.IO

getYAMLFromFile :: FilePath -> IO String
getYAML file_path = do
                h <- (openFile file_path ReadMode)
                con

main :: IO ()
main = putStrLn $ getYAMLFromFile getArgs
