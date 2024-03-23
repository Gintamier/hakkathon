/*
Create a function called CardNamer.

When given an integer between 1-13,
it should return the name of the corresponding card (Ignore the suit)
 */

String cardNamer(int i) {
  List<String> cardName = ['🂡 Ace 🂡', '🂢 Two 🂢', '🂣 Three 🂣', '🂤 Four 🂤','🂥 Five 🂥', '🂦 Six 🂦'
    ,'🂧 Seven 🂧', '🂨 Eight 🂨', '🂹 Nine 🂹', '🂺 Ten 🂺', '🃋 Jack 🃋', '🂭 Queen 🂭', '🂮 King 🂮',];
  return cardName[i-1];}