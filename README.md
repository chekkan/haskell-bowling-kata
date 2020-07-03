# haskell-bowling-kata

The Bowling Game excercise from Agile Principles, Patterns, and Practices

## Overview of the Rules of Bowling

Bowling is a game that is played by throwing a cantaloupe-sized ball down a narrow alley toward ten wooden pins. The object is to knock down as many pins as possible per throw. 

The game is played in ten frames. At the beginning of each frame, all ten pins are set up. The player then gets two tries to knock them all down. If the player knocks all the pins down on the first try, it is called a “strike,” and the frame ends. 

If the player fails to knock down all the pins with the first ball but succeeds with the second ball, it is called a “spare.” After the second ball of the frame, the frame ends even if pins are still standing. 

A _strike_ frame is scored by adding ten, plus the number of pins knocked down by the next two balls, to the score of the previous frame. A _spare_ frame is scored by adding ten, plus the number of pins knocked down by the next ball, to the score of the previous frame. Otherwise, a frame is scored by adding the number of pins knocked down by the two balls in the frame to the score of the previous frame. 

If a strike is thrown in the tenth frame, the player may throw two more balls to complete the score of the strike. Likewise, if a spare is thrown in the tenth frame, the player may throw one more ball to complete the score of the spare. Thus, the tenth frame may have three balls instead of two.

```
|----- ----- ----- ----- ----- ----- ----- ----- ----- -------|
| 1 4 | 4 5 | 6 / | 5 / |   X | 0 1 | 7 / | 6 / |   X | 2 / 6 |
|  5  |  14 |  29 |  49 |  60 |  61 |  77 |  97 | 117 |   133 |
|----- ----- ----- ----- ----- ----- ----- ----- ----- -------|
```

The preceding scorecard shows a typical, if rather poor, game. In the first frame, the player knocked down one pin with the first ball and four more with the second. Thus, the player’s score for the frame is a 5. In the second frame, the player knocked down four pins with the first ball, and five more with the second. That makes nine pins total, added to the previous frame makes 14. 

In the third frame, the player knocked down six pins with the first ball and knocked down the rest with the second for a spare. No score can be calculated for this frame until the next ball is rolled. 

In the fourth frame, the player knocks down five pins with the first ball. This lets us complete the scoring of the spare in frame 3. The score for frame 3: 10 plus the score in frame 2 (14) plus the first ball of frame 4 (5), or 29. The final ball of frame 4 is a spare. 

Frame 5 is a strike. This lets us finish the score of frame 4 which is 29 + 10 + 10 = 49. 

Frame 6 is dismal. The first ball went in the gutter and failed to knock down any pins. The second ball knocked down only one pin. The score for the strike in frame 5 is 49 + 10 + 0 + 1 = 60. 

The rest you can probably figure out for yourself.

Martin, Robert C.. Agile Principles, Patterns, and Practices in C#: AGILE PRIN PATTS PRACTS C#_1 (Robert C. Martin Series) (p. 99). Pearson Education. Kindle Edition. 
