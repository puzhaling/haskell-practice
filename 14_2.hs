data FiveSidedDie = S1 | S2 | S3 | S4 | S5
  deriving (Enum, Ord, Show)

class Die a where
  roll :: Int -> a  

instance Die FiveSidedDie where
  roll n = toEnum (n `mod` 5)
