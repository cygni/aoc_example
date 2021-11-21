import System.Environment (lookupEnv)

parseInts :: [String] -> [Int]
parseInts ss = map read ss

solve :: String -> [String] -> String
solve "part1" xs = show $ foldl1 (+) $ parseInts xs 
solve "part2" xs = show $ foldl1 (*) $ parseInts xs 

whichPart part = case part of
                   Just(p) -> p
                   Nothing -> "part1"

main :: IO ()
main = do 
    content <- readFile "input.txt"
    part <- whichPart <$> lookupEnv "part"
    putStrLn "Haskell"
    putStrLn $ solve part $ lines content