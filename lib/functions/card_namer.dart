/*
Create a function called CardNamer.

When given an integer between 1-13,
it should return the name of the corresponding card (Ignore the suit)
 */

String cardNamer(int i) {
  String cardName; 
  if (i == 1) {
    cardName = "Ace";
  } else if (i == 2) {
    cardName = "Two";
  } else if (i == 3) {
    cardName = "Three";
  } else if (i == 4) {
    cardName = "Four";
  } else if (i == 5) {
    cardName = "Five";
  } else if (i == 6) {
    cardName = "Six";
  } else if (i == 7) {
    cardName = "Seven";
  } else if (i == 8) {
    cardName = "Eight";
  } else if (i == 9) {
    cardName = "Nine";
  } else if (i == 10) {
    cardName = "Ten";
  } else if (i == 11) {
    cardName = "Jack";
  } else if (i == 12) {
    cardName = "Queen";
  } else if (i == 13) {
    cardName = "King";
  } else {
    return "Invalid Card";
  }
  return cardName; 
}