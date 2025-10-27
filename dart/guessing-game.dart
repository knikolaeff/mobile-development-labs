import 'dart:math';
import 'dart:io';

void main() {
  int number = Random().nextInt(100);
  int guess = 0;
  print("Welcome to the Number Guessing Game! Please make a guess!");

  do {
    guess = int.parse(stdin.readLineSync()!);
    if (guess > number) {
      print("My number is lower!");
    }
    if (guess < number) {
      print("My number is higher!");
    }
  } while (guess != number);

  print("Congratulations! $guess is the correct number!");
}
