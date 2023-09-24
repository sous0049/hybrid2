import 'dart:io';
import 'package:hybrid2/lucky.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print(
        'Please, to run this program, provide names while using: dart bin/main.dart <name1> <name2> ...');
    return;
  }

  for (var n in arguments) {
    var capitalizedName = n[0].toUpperCase() + n.substring(1);
    var lucky = Lucky();

    print('Hello $capitalizedName. Your lucky number is ${lucky.luckyNumber}');
  }
}
