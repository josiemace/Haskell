module MP3a where

import Data.List
import Data.List.Split


{-
  Binary tree related type definitions.
-}
data BinTree a = Node a (BinTree a) (BinTree a)
data Direction = L | R


{-
  Creates a `BinTree` where all nodes contain the specified value.
-}
treeRepeat :: a -> BinTree a
treeRepeat = undefined


{-
  Creates a `BinTree` where the nodes are populated with the natural numbers, 
  starting at the "root" of the tree and then downwards and from left to right 
  across each level of the tree.
-}
treeNats :: BinTree Integer
treeNats = undefined


{-
  Takes a list of `Direction` values (`L`eft or `R`ight) and traverses the tree 
  to return the value in the target node. 
  
  Examples:
  
  treeVal [L,R] treeNats => 5
  
  treeVal [] treeNats => 1  
-}
treeVal :: [Direction] -> BinTree a -> a
treeVal = undefined


{-
  Converts a tree to a list; the root of the tree is the first list value, and 
  the values in the tree are taken downwards and across each level. 
  
  Examples:

  take 10 $ treeToList treeNats
  => [1,2,3,4,5,6,7,8,9,10]
-}
treeToList :: BinTree a -> [a]
treeToList = undefined


{-
  "Flips" the `BinTree` so that we obtain the mirror image of the original tree. 
  
  For instance, flipping the tree on the left gives us the one on the right:

             1                     1
           /   \                 /   \
          2     3      =>       3     2
         / \   / \             / \   / \
        4   5 6   7           7   6 5   4
-}
treeFlip :: BinTree a -> BinTree a
treeFlip = undefined


{-
  Returns a `BinTree` based on an infinite list where the first item of the list
  is the root, and subsequent items from the list are assigned to nodes 
  downwards and across the levels of the tree.
  
  Examples:

  take 10 $ treeToList $ treeFromList [1..]
  => [1,2,3,4,5,6,7,8,9,10]
  
  Hint: check out your `treeNats` for inspiration!
-}
treeFromList :: [a] -> BinTree a
treeFromList = undefined


{-
  Takes a function and an initial value, and returns a `BinTree` where the root 
  value is the initial value, and values in subsequent nodes are based on 
  repeated applications of the given function to the value.
  
  Examples:

  treeVal [R,R,R] $ treeIterate (2*) 1
  => 16384

  take 15 $ treeToList $ treeFlip $ treeIterate (2*) 1
  => [1,4,2,64,32,16,8,16384,8192,4096,2048,1024,512,256,128]

  Hint: checkout `iterate`.
-}
treeIterate :: (a -> a) -> a -> BinTree a
treeIterate = undefined


{-
  BinTree instance of the Functor class.
-}
instance Functor BinTree where
  fmap = undefined


{-
  BinTree instance of the Applicative class.  
-}
instance Applicative BinTree where
  pure = undefined
  (<*>) = undefined