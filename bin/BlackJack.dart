import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';
import 'package:BlackJack/functions/welcome.dart';
/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  List<int> deck = DeckOfCards();
  print(deck);
  List<int> shuffledDeck = Shuffler(deck);
  List<int> houseHand = [];
  List<int> playerHand = [];
  InitialDeal(playerHand, houseHand, shuffledDeck);


  print(houseHand);
  print(playerHand);
  print(shuffledDeck);

}

