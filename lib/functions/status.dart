import 'dart:io';

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
  print('Players hand: ');
  stdout.write('{');
  for(var card in playerHand) {
    var currentCard = CardNamer(card);
    stdout.write('$currentCard ');
  }
  stdout.write('} = ');
  int playerScore = CalculateScore(playerHand);
  stdout.write('$playerScore');


  print('\nHouse hand: ');
  stdout.write('{');
  for(var card in houseHand) {
    var currentCard = CardNamer(card);
    stdout.write('$currentCard ');
  }
  stdout.write('} = ');
  int houseScore = CalculateScore(houseHand);
  stdout.write('$houseScore');
}