import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';
import 'package:BlackJack/functions/welcome.dart';
/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  List<int> deck = DeckOfCards();
  List<int> shuffledDeck = Shuffler(deck);
  List<int> houseHand = [];
  List<int> playerHand = [];
  int bankRoll = BuyIn();
  while (bankRoll > 0) {
  int currentBet =  PlaceBet(bankRoll);
  InitialDeal(playerHand, houseHand, shuffledDeck);
  Status(playerHand, houseHand);
  HitOrStay(playerHand, houseHand, deck);
  if(!CheckIfBusted(playerHand)) {
    HousePlays(houseHand, deck);
  }
  bankRoll = checkWinner(playerHand, houseHand, bankRoll, currentBet);
  ReturnHands(playerHand, houseHand, deck);
  }
  print(houseHand);
  //print(CheckIfBusted(houseHand));
  HousePlays(houseHand, shuffledDeck);
}

