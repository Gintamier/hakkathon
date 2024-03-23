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
  List<int> hand = [];
  int card = DealCard(shuffledDeck);
  DrawCard(hand, shuffledDeck);
  DrawCard(hand, shuffledDeck);
  DrawCard(hand, shuffledDeck);

  print(shuffledDeck);
  print(hand);
}

