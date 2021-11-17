import System.Environment (getEnv)

parseInts :: [String] -> [Int]
parseInts ss = map read ss

solve :: String -> [String] -> String
solve "part1" xs = show $ foldl1 (+) $ parseInts xs 
solve "part2" xs = show $ foldl1 (*) $ parseInts xs 


main :: IO ()
main = do 
    content <- readFile "input.txt"
    part <- getEnv "part"
    putStrLn $ solve part $ lines content