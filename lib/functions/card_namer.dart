/*
Create a function called CardNamer.

When given an integer between 1-13,
it should return the name of the corresponding card (Ignore the suit)
 */

String CardNamer(int i) {
  if (i == 1) {
    return "Ás";
  } else if (i == 11) {
    return 'Gosi';
  } else if (i == 12) {
    return 'Drottning';
  } else if (i == 13) {
    return 'Kóngur';
  } else {
    return i.toString();
  }
}