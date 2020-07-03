module Lib
    (
      scoreGame
    ) where

import Data.Char (digitToInt)

data Frame = Strike | Spare Int | Pair (Int, Int)
  deriving (Show)

toFrames :: String -> [Frame]
toFrames [] = []
toFrames ('X':frames) = Strike : toFrames frames
toFrames (x:'/':frames) = Spare (digitToInt x) : toFrames frames
toFrames (z:[]) = Pair (digitToInt z, 0) : []
toFrames (x:y:z) = Pair (digitToInt x, digitToInt y) : toFrames z

scoreForFrame :: [Frame] -> Int
scoreForFrame [] = 0
scoreForFrame (Strike:Strike:[]) = 0
scoreForFrame (Spare _:x:[]) = 10 + toValue x
scoreForFrame (Strike:a:b:rest) = 10 +
                                  nextTwoBallScores (a:b:[]) +
                                  scoreForFrame (a:b:rest)
scoreForFrame (Spare x:a:rest) = 10 + nextBallScore a + scoreForFrame (a:rest)
scoreForFrame (a:rest) = toValue a + scoreForFrame rest

toValue :: Frame -> Int
toValue Strike = 10
toValue (Spare x) = 10
toValue (Pair (x, y)) = x + y

nextTwoBallScores :: [Frame] -> Int
nextTwoBallScores [] = 0
nextTwoBallScores (Pair (a,b):_) = a + b
nextTwoBallScores (Spare _:ys) = 10
nextTwoBallScores (Strike:Spare x:_) = 10 + x
nextTwoBallScores (x:y:_) = toValue x + toValue y

nextBallScore :: Frame -> Int
nextBallScore (Pair (a,b)) = a
nextBallScore (Spare x) = x
nextBallScore x = toValue x

scoreGame :: String -> Int
scoreGame xs = scoreForFrame $ toFrames xs
