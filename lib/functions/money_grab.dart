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

int PlaceBet(int bankRoll) {
  while (true) {
    try {
      print('Place your bet now:');
      int input = int.parse(stdin.readLineSync()!);
      if (input <= 0) {
        print('Your bet cannot be lower or equal to 0!');
      } else if (input > bankRoll) {
        print('Your bet cannot be higher than $bankRoll!');
      } else {
        print('Your bet is: $input');
        return input;
      }
    } catch (e) {
      print('invalid input! Your bet needs to be a number.');
    }
  }
}

int BuyIn() {
  while (true) {
    try {
      print('How much would you like to buy in for?');
      print('The minimum buy in is \$50:');
      int input = int.parse(stdin.readLineSync()!);
      if (input < 50) {
        print('Minimum buy in is \$50.');
      } else {
        print('Your buy in is: $input');
        return input;
      }
    } catch (e) {
      print('invalid input! Your bet needs to be a number.');
    }
  }
}
