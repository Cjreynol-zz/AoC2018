module Lib
    ( getFileArgContents
    , readInt
    , strToInts
    ) where


import System.Environment   (getArgs)


-- | Read the passed in file to a String.
--  Expects a filename as the first argument to the program.
getFileArgContents :: IO String
getFileArgContents = (head <$> getArgs) >>= readFile

-- | Convert a single string of integers separated by newlines into a list of 
-- integers.
strToInts :: String -> [Int]
strToInts = (fmap readInt) . lines

-- | Convert strings to integers, adding a filter to allow numbers in the form
-- of "+123".
readInt :: String -> Int
readInt = read . (filter (/= '+'))

