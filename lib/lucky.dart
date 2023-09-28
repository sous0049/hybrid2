import 'dart:io';
import 'dart:math' as math;

class Lucky {
  int? luckyNumber;

  Lucky() {
    if (Platform.environment['MIN'] == null ||
        Platform.environment['MAX'] == null) {
      print('Please, provide MIN and MAX environment variables');
      exit(1);
    }
    int min = int.parse(Platform.environment['MIN'] ?? '');
    int max = int.parse(Platform.environment['MAX'] ?? '');
    luckyNumber = min + math.Random().nextInt(max - min + 1);
  }
}
