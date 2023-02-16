-- Define a function to calculate the factorial of a number
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)


main :: IO ()
main = do
  putStrLn "Enter a number that will be n of nPk:"
  numStrN <- getLine
  let numN = read numStrN :: Integer
  
  putStrLn "Enter a number that will be k of nPk:"
  numStrK <- getLine
  let numK = read numStrK :: Integer
  if numK > numN
    then putStrLn "Error: k must be less than or equal to n"
    else do
      let factNum = factorial numN
      let factDenom = factorial (numN-numK)
      let nPk = fromIntegral factNum / fromIntegral factDenom   --Allows decimal results
      putStrLn $ "The nPk is " ++ show nPk
      
      let factNumC = factorial numN
      let factDenomC = factorial (numK) * factorial (numN-numK)
      let nCk = fromIntegral factNumC / fromIntegral factDenomC --Allows decimal results
      putStrLn $ "The nCk is " ++ show nCk
      
      
    
    
    
