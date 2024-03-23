import 'score_function.dart';
import 'card_namer.dart';

void Status(List<int> playerHand, List<int> houseHand) {
  List<String> newPlayerHand = [];
  List<String> newHouseHand = [];



  print("Player hand:");
  for (int card in playerHand) {
    String newCard = cardNamer(card);
    newPlayerHand.add(newCard);
    print(newCard);
  }
  print("For a total of: ${CalculateScore(playerHand)}\n");


  if (houseHand.length == 2) {
  print("House hand:\n${newHouseHand[0]}");
    print("For a total of: ${CalculateScore([houseHand[0]])}");
  } else {
    print("House hand:");
    for (int card in houseHand) {
      String newCard = cardNamer(card);
      newHouseHand.add(newCard);
      print(newCard);
    }
    print("For a total of: ${CalculateScore(houseHand)}");
  }
}

