import 'dart:io';
import 'Homework2.1.dart';

void main() {
  var game = Game(maxRandom: 100);
  List<int> myList = [];
  int result = 0;
  int count = 0;
  var len = myList.length;
  for (var i = 0; i < myList.length; i++) {
    print(myList[i]);
  }
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
        stdout.write('Play again (Y/N) : ');

        var input1 = stdin.readLineSync();
        print('');
        if (input1 == 'n' || input1 == 'N') {
          break;
        } else if (input1 == 'y' || input1 == 'Y') {
          game = Game();
          result == 0;
          stdout.write('║ Guess The number between 1 and 100: ');
          var input = stdin.readLineSync();
          var guess = int.tryParse(input!);


          if (guess == null) {
            continue;
          }
          result = game.doGuess(guess);
          count = count + 1;
        }
      }
      len++;
    } while (result != 1);
    print("You've played $len");
    print('🚀 Game#1 $count guesses');
    print('🚀 Game#2 $count guesses');


    }










