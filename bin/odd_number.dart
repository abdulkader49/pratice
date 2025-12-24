import 'dart:io';

void main() {
  stdout.write('\n\nFind your odd number: ');
  String? input = stdin.readLineSync();
  int? userNumber = int.tryParse(input ?? '');

  if(userNumber == null) {
    print('\nYou have entered wrong input: $input');
  }

  for (int i = 0; i <= (userNumber ?? 0); i++) {
    if (i % 2 == 1) {
      print(i);
    }
  }
}
