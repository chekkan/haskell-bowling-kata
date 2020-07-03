import Test.Hspec
import Lib

main :: IO ()
main = hspec $ do
  describe "scoreGame" $ do
    it "should return the score for no point game" $ do
      scoreGame "00000000000000000000" `shouldBe` 0

    it "should return 20 for the score when 1 point per throw" $ do
      scoreGame "11111111111111111111" `shouldBe` 20

    it "should return 19 for the score when 1 point per throw except last" $ do
      scoreGame "11111111111111111110" `shouldBe` 19

    it "should return score for spare" $ do
      scoreGame "4/200000000000000000" `shouldBe` 14

    it "should return score for spare : 3" $ do
      scoreGame "4/300000000000000000" `shouldBe` 16

    it "perfect game" $ do
      scoreGame "XXXXXXXXXXXX" `shouldBe` 300

    it "almost perfect game" $ do
      scoreGame "XXXXXXXXXX9/" `shouldBe` 289

    it "typical bowling game" $ do
      scoreGame "14456/5/X017/6/X2/6" `shouldBe` 133
