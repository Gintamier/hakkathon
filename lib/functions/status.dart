import 'score_function.dart';
import 'card_namer.dart';

/*
Create a function that prints the current "Status" of the match,
called ... uh... Status! Yes! That's it!

The function should take in two lists of integers, the playerHand and houseHand.

Using the score function and cardnamer, print info that informs the user
on what hand he has, his score and the hand of the house.

(Check out blackjack rules on what we actually get to know from the house
hand before showdown.)

 */
void Status(List<int> playerHand, List<int> houseHand){
  List newPlayerHand = [];
  List newHouseHand = [];

  for (int card in playerHand) {
    String newCard = cardNamer(card);
    newPlayerHand.add(newCard);
  }
  for (int card in houseHand) {
    if(houseHand.length == 2){
      print(houseHand[1]);
      print(CalculateScore(houseHand));
    }
    String newCard = cardNamer(card);
    newHouseHand.add(newCard);
  }
print("Player hand: ${newPlayerHand}\nFor a total of: ${CalculateScore(playerHand)}");
  print("Player hand: ${newHouseHand[0]}\nFor a total of: ${CalculateScore(houseHand)}");

}