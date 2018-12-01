module Main
    where


import Data.Set (Set, insert, member, singleton)

import Lib      (getFileArgContents, strToInts)


main :: IO ()
main = do
    intEntries <- strToInts <$> getFileArgContents
    print $ sum intEntries
    print $ findRepeat intEntries
    

findRepeat :: [Int] -> Int
findRepeat nums = helper 0 (singleton 0) (cycle nums)
    where
        helper :: Int -> (Set Int) -> [Int] -> Int
        helper freq freq_set (x:xs)
            | member freq' freq_set = freq'
            | otherwise = helper freq' (insert freq' freq_set) xs
            where 
                freq' = freq + x

