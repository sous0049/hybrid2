import 'dart:io';
import 'dart:math' as math;

class Lucky {
  int? luckyNumber;

  Lucky() {
    var min = int.parse(Platform.environment['MIN'] ?? '');
    var max = int.parse(Platform.environment['MAX'] ?? '');
    luckyNumber = min + math.Random().nextInt(max - min + 1);
  }
}
