import 'dart:io';

import 'package:BlackJack/functions/money_grab.dart';
/*
Create a function called OptionSelect which takes in a list of options,
prints them out to the user and asks for the user to select an option.

It should then print something like
klkl
List<String> options = ['BurgerKing', 'McDonalds'];
int idx = OptionSelect('Where do you want to eat?', options );
and returns the users answer.

Where do you want to eat?
[1] BurgerKing
[2] McDonalds
Bonus point!
Can you make it so that if the user does not select a correct option,
that the function will simply ask the user again to input an answer?

 */
  // place bet
  // hit
  // stay
  // quit game
List<String> options = ["1. Place bet", "2. Stay", "3. Hit", "4. Exit game"];

int OptionSelect(String statement, List<String> options) {
  print(statement);
  bool isActiv = true;
  while (isActiv) {
    for (int i = 0; i < options.length; i++) {
      print("${i + 1}. ${options[i]}");
    }

    String? input = stdin.readLineSync();
    int? parsedInput = int.tryParse(input!);
    if (parsedInput == null || parsedInput > options.length) {
      print("invalid input, please try again");
    } else {
      return parsedInput!;
    }
  }
}


