qsort []= []
qsort (x:xs) = 
    qsort (filter (< x) xs) ++ [x] ++ qsort (filter (>= x) xs)


main :: IO ()
main = do
    putStrLn "Enter a list of numbers separated by spaces:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
        sorted = qsort numbers
    print sorted