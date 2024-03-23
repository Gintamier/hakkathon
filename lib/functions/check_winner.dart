/*
Create a function that takes in FOUR inputs.

houseHand which is list of integers
playerHand which is a list of integers
currentBet which is an integer
currentBankRoll which is an integer

Google the rules of black jack and calculate if house or player won the match.
Subtract / Add bets where applicable and return the updated currentBankRoll
of the user, which should have decreased/increased based on if he won or not.
 */



import 'package:BlackJack/functions/functions.dart';

num checkWinner(List<int> playerHand, List<int> houseHand, int currentBankRoll, int currentBet) {
  int playerScore = CalculateScore(playerHand);
  int houseScore = CalculateScore(houseHand);

  if (playerScore == 21 && playerHand.length == 2) {
    print("Blackjack! You win!");
    return currentBankRoll + (currentBet * 1.5);
  } else if (houseScore == 21 && houseHand.length == 2) {
    print("Tough luck, The house got a Blackjack!");
    return currentBankRoll - currentBet;
  }

  if (CheckIfBusted(playerHand)) {
    print("You busted!");
    return currentBankRoll - currentBet;
  } else if (CheckIfBusted(houseHand)) {
    print("House busted! You win!");
    return currentBankRoll + currentBet;
  }

  if (playerScore > houseScore) {
    print("You win!");
    return currentBankRoll + currentBet;
  } else if (houseScore > playerScore) {
    print("You Lose!");
    return currentBankRoll - currentBet;
  } else {
    print("It's a tie!");
    return currentBankRoll;
  }
}
