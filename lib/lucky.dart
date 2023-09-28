import 'dart:io';
import 'dart:math' as math;

class Lucky {
  int? luckyNumber;

  Lucky() {
    int min = int.parse(Platform.environment['MIN'] ?? '');
    int max = int.parse(Platform.environment['MAX'] ?? '');
    luckyNumber = min + math.Random().nextInt(max - min + 1);
  }
}
