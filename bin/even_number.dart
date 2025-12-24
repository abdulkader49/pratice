import 'dart:io';

void main() {
  stdout.write('\n\nFind your even number:');
  String? input = stdin.readLineSync();
  int? userNumber = int.tryParse(input ?? '');


while(userNumber == null){
  print('You have entered wrong input: $input');
  break;
}
  for (int i = 1; i <= (userNumber ?? 0); i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

}
