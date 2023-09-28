import 'dart:io';
import 'package:main/lucky.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print(
        'Please, to run this program, provide names while using: dart bin/hybrid2.dart <name1> <name2> ...');
    return;
  }

  for (var n in arguments) {
    String capitalizedName = n[0].toUpperCase() + n.substring(1);
    Lucky lucky = Lucky();

    print('Hello $capitalizedName. Your lucky number is ${lucky.luckyNumber}');
  }
}
