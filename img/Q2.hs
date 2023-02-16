import Control.Monad (forM_)

main :: IO ()
main = do
  let spaces = [2, 1, 0, 1, 2]
  let asterisks = [1, 3, 5, 3, 1]
  forM_ (zip spaces asterisks) $ \(s, a) -> do
    putStrLn $ replicate s ' ' ++ replicate a '*'

