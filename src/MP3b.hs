module MP3b where

{-
  Playing card definitions (feel free to add your own supporting types, so long 
  as you keep `Card`).
-}
data Card = Undefined


{-
  A full deck of 52 playing cards.
-}
deck :: [Card]
deck = undefined



{-
  Hand types. Don't change these.
-}
data Hand = HighCard  | Pair | TwoPair | ThreeOfAKind | Straight
            | Flush | FullHouse | FourOfAKind | StraightFlush | RoyalFlush
            deriving (Eq, Show, Ord)


{-
  Takes a list of 5 cards and returns the strongest hand they can be
  used to make. 

  Examples (note that your `Card` values may look different):

  hand [Card 2 H, Card 3 D, Card Ace H, Card 5 D, Card 4 S]
  => Straight

  hand [Card 2 D, Card 3 C, Card 2 C, Card 3 D, Card 2 H]
  => FullHouse
-}
hand :: [Card] -> Hand
hand = undefined


{-
  Takes a list of 5-`Card` lists, and returns a list of tuples of type 
  `(Int, Hand)`, where each tuple indicates the number of times a certain 
  `Hand` occurs in the input list. The tuples should be sorted in decreasing 
  order of frequency.
  
  See the machine problem write-up on how to test this function with the 
  generators defined for you below.
-}
computeStats :: [[Card]] -> [(Int, Hand)]
computeStats = undefined
