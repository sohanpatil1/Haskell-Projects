funa :: Float -> Int
funb :: Float -> Int
square :: Int -> Int -> Int
funa a = round(a)       -- Rounding values to convert into Integer if input is Float and not Int
funb b = round(b)       -- Rounding values to convert into Integer if input is Float and not Int
square a b = (a + b) * (a + b)

main = do
    putStrLn "Enter a number:"
    numStr <- getLine
    let numa = read numStr :: Float

    putStrLn "Enter a number:"
    numStr <- getLine
    let numb = read numStr :: Float

    putStrLn $ "The answer is " ++ show (square (funa numa) (funb numb))