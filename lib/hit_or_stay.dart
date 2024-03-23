import 'package:BlackJack/functions/draw_card.dart';

import 'functions/status.dart';
import 'functions/card_namer.dart';
import 'functions/deal_card.dart';
import 'functions/option_select.dart';
import 'functions/check_if_busted.dart';

/*
This is a complicated function,which accepts three inputs,

the current player hand (list of integers),
house hand (list of integers)
the current deck (list of integers)

It should be a infinite loop that asks the user if he
wants to draw a card or stay. If he chooses to stay,
then the loop should stop.

If he wants to draw a card, add a card to his hand,
tell him what card he drew and print the current information of the game.

If he busts after drawing this card, break the loop as well.
 */

void HitOrStay(List<int> playerHand, List<int> houseHand, List<int> deck){
  bool active = true;
  List<String> customOptions = ['Hit', 'Stay'];
  while(active) {
 int option = OptionSelect('Would you like to hit or stay?', customOptions );
    if(option == 1) {
      print("Drawing another card...");
      int card = DealCard(deck);
      playerHand.add(card);
      //Check busted 
      if (CheckIfBusted(playerHand) == true){
        print("You lose, The house always wins.");
        break;
      }
  } else if(option == 2) {
    active = false;
  } 
  }
 
}