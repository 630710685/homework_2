import 'dart:developer';
import 'dart:io';
import 'Homework2.1.dart';

void main() {
  var game = Game(maxRandom: 100);

  int result = 0;
  int count = 0;

  do {
    stdout.write('║ Guess The number between 1 and 100: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);


    if (guess == null) {
      continue;
    }
    result = game.doGuess(guess);
    count = count + 1;
    while (result == 1) {
      print('║ ➜ total guesses: $count');
      print('║══════════════════════════════════════════');
      print('║                The End                   ');
      print('║══════════════════════════════════════════');
      print('');

      stdout.write('║ Play again (Y/N) : ');
      var input1 = stdin.readLineSync();
      if (input1 == 'n' || input1 == 'N') {
        break;

      }else if (input1 == 'y' || input1 == 'Y') {
        game=Game();
        result == 0;
        stdout.write('║ Guess The number between 1 and 100: ');
        var input = stdin.readLineSync();


      }
    }
  }while (result != 1);
    print('║ ➜ total guesses: $count');
    print('║══════════════════════════════════════════');
    print('║                The End                   ');
    print('║══════════════════════════════════════════');
    print('');


    }










