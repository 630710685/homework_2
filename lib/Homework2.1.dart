import 'dart:math';
class Myclass {
  Myclass(){
    var g = Game();
    g.answer = 10;

  }
}

class  Game {
  int answer = 0;

  Game({int maxRandom = 100}) {
    var r = Random();
    answer = r.nextInt(maxRandom) + 1;
    print('Enter a maximum number to random: $answer');
    print('║══════════════════════════════════════════');
  }
  int doGuess(int num) {

    if (num > answer) {
      print('║ ➜ $num is TOO HIGH! ▲');
      print('║══════════════════════════════════════════');

      return 0;

    } else if (num < answer) {
      print('║ ➜ $num is TOO Low! ▼');
      print('║══════════════════════════════════════════');

      return 0;

    } else {
      print('║ ➜ $num is correct! ❤');
      return 1;

    }
  }
}


