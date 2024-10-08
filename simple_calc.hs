sampleInput :: [String]
sampleInput = ["21", "+", "123"]

calc :: [String] -> Int
calc (val1:"+":val2:rest) = read val1 + read val2
calc (val1:"*":val2:rest) = read val1 * read val2

main :: IO ()
main = do
  userInputs <- getContents
  let values = lines userInputs
  print (calc values)
