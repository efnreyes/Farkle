Custom Delegation
=================

The design of the delegation mechanism is simple. The delegating class has an outlet or property, usually one that is named delegate; if it is an outlet, it includes methods for setting and accessing the value of the outlet. It also declares, without implementing, one or more methods that constitute a formal protocol or an informal protocol.

Farkle
======


As a user, I want to create dice
2 points

    Create a new project named: Farkle
    Create a subclass of UILabel called: DieLabel

As a user, I want to view 6 dice
2 points

    Add a UILabel to the ViewController in your Storyboard
        hint: make sure you check User Interaction Enabled on all of your Labels
        hint this is not the same checkbox as the Enabled one!
    Change the label’s class to DieLabel
    Set the label’s text to: 1
    Drag a UITapGestureRecognizer and drop it on the DieLabel
    Rename the gestureRecognizer in the left hand view hierarchy to: Tap Gesture Recognizer (1)
        hint: we do this because GestureRecognizers are not placed visually proximate to the view on which they are placed
    Add an action to DieLabel.m: -(IBAction)onTapped:(id)sender and connect it to the TapGestureRecognizer
    Change the backgroundColor of the DieLabel so that it’s easier to see
    Repeat this story 5 times more so you have a total of 6 dice on the screen
        hint: make sure you connect a new gesture recognizer to each DieLabel!

As a user, I want to roll a die
2 points

    Add a -(void)roll method to your DieLabel class
        hint: both .h and .m: it's a public method
    In your implementation, set the label’s text to a random number between 1 and 6

As a user, I want to roll all the dice
2 points

    Add a button to your ViewController scene titled: Roll.
    Hook it up to the onRollButtonPressed: action.
    In onRollButtonPressed’s method body, call the roll method on each DiceLabel in your ViewController
        hint: You can either fast enumerate self.view.subviews or hook all of your DieLabels up to outlets

As a user, I want to select dice to roll again
3 points

The goal is that after the first roll, selected dice are held—that is—NOT rolled again. Don't forget to clean up your previously touched dice between rolls. Remember, the first roll rolls all the dice!

    Create a protocol: DieLabelDelegate
    Add a method declaration to the DieLabelDelegate protocol: -(void)didChooseDie:(id)dieLabel
    Declare your intention to implement the DieLabelDelegate protocol by adding it to your angular brackets in your ViewController.m and implementing the methods that Xcode warns you aren’t implemented.
    Add an NSMutableArray property to your viewController called: dice
    Add a property to DieLabel called delegate of type id<DieLabelDelegate>
    Set the delegate properties of all the DieLabels to the ViewController instance.
        hint: self
    When the DieLabel is tapped, call the delegate-protocol method on the DieLabel’s delegate property.
        hint: you write this code in DieLabel.m
    In your DieLabelDelegate protocol method implementation add the DieLabel instance to your dice array.
    When Roll is pressed, only call roll on the DieLabels not in the dice array.
        hint: when die are pressed, change their background colors to indicate that they won't be rolled next time
        hint: if you hooked the roll button up to all six roll methods on all six of your DieLabels then you will now have to rethink that…

As a user, I want to play a round of Farkle
3 points

    Add a UILabel to track the user’s score to the ViewController scene in the storyboard
    Hook this label up to an outlet in ViewController.m and name it userScore

Now it's time to implement the Farkle game rules.  Have fun!  Challenge yourself!  There are many variations of the Farkle rules but implement the standard one first.

Implement these rules (From the Farkle Wikipedia Page):

Farkle is played by two or more players, with each player in succession having a turn at throwing the dice. Each player's turn results in a score, and the scores for each player accumulate to some winning total (usually 10,000).

    At the beginning of each turn, the player throws all of the dice at once from a cup.
    After each throw, one or more scoring dice must be set aside (see sections on scoring below).
    The player may then either end their turn and bank the score accumulated so far, or continue to throw the remaining dice.
    If the player has scored all six dice, they have "hot dice" and may continue their turn with a new throw of all six dice, adding to the score they have already accumulated. There is no limit to the number of "hot dice" a player may roll in one turn.
    If none of the dice score in any given throw, the player has "farkled" and all points for that turn are lost.
    At the end of the player's turn, the dice are handed to the next player in succession (usually in clockwise rotation), and they have their turn.

Once a player has achieved a winning point total, each other player has one last turn to score enough points to surpass that high-score.
Standard scoring

The following scores for single dice or combinations of dice are widely established, in that they are common to all or nearly all of the above-cited descriptions of farkle scoring.
Dice combination 	Score
Each 1 	100
Each 5 	50
Three 1s 	1000
Three 2s 	200
Three 3s 	300
Three 4s 	400
Three 5s 	500
Three 6s 	600

For example, if a player throws 1-2-3-3-3-5, they could do any of the following:

    score three 3s as 300 and then throw the remaining three dice
    score the single 1 as 100 and then throw the remaining five dice
    score the single 5 as 50 and then throw the remaining five dice
    score three 3s, the single 1, and the single 5 for a total of 450 and then throw the remaining die
    score three 3s, the single 1, and the single 5 for a total of 450 and stop, banking 450 points in that turn

This is not an exhaustive list of plays based on that throw, but it covers the most likely ones. If the player continues throwing, as in any of the above cases except the last, they risk farkling and thus losing all accumulated points. On the other hand, if they score five dice and have only one die to throw, they have a 1 in 3 chance of scoring a single 1 or a single 5, and then having scored all six dice they will have "hot dice" and can throw all six dice again to further increase their score.

Each scoring combination must be achieved in a single throw. For example, if a player has already set aside two individual 1s and then throws a third with the four dice remaining, they do not have a triplet of 1s for a score of 1000 but merely three individual 1s for a score of 300.


Stretches
=========


As a user, I want to play this game against another user
3 points

    Add a button to indicate when a turn is finished and points should be gathered
    Add a second label to keep score between the two players



As a user, I want to play a more complex version of Farkel
3 points

    Using the Farkle Wikipedia page, http://en.wikipedia.org/wiki/Farkle, implement some more complex playing rules.



As a user, I want see actual dice, not lame numbers
5 points

Make the DieLabel's look like actual dice.
