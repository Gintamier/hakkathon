import 'dart:io';

/*
Create two functions called

PlaceBet(int currentBank)
- Asks the user how much they want to bet this round, return the amount.
- Solve edge cases when the bet is larger than current bank or if
the user chooses to bet 0.

BuyIn
- Ask the user for how much they want to buy in to black jack

These methods should return an integer.

BONUS POINTS:
Can you design the function such that it will ask the user again if
he doesn't input a integer?
 */

int PlaceBet(int bankRoll){
  int betValue = int.parse(stdin.readLineSync()!);
  if(betValue < bankRoll){
    bankRoll - betValue;
  } else if (betValue > bankRoll){
    print("You can't afford this bet.");
  } else if(betValue == 0){
    print("This ain't a free game..");
  } 
  return bankRoll;
}

int BuyIn(){
  int buyIn = int.parse(stdin.readLineSync()!);
  int bankRoll = buyIn;
  return bankRoll;
}