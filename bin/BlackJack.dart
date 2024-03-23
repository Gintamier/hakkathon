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
  int bankRoll = 2000;
  InitialDeal(playerHand, houseHand, shuffledDeck);
  DrawCard(houseHand, shuffledDeck);

  Status(playerHand, houseHand);
  print(CheckIfBusted(houseHand));
  PlaceBet(bankRoll);
}

