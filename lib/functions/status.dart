import 'score_function.dart';
import 'card_namer.dart';

void Status(List<int> playerHand, List<int> houseHand) {



  print("Player hand:");

    print(playerHand[0]);
    print(playerHand[1]);
  print("For a total of: ${CalculateScore(playerHand)}\n");


      print(houseHand[0]);
    print(houseHand[1]);
}

