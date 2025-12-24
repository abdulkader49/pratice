import 'dart:io';

void main() {
  String username = 'Abdul Kader';
  String password = '1234';

  int attempt = 0;
  print('\n\nLogin your account');

  // User can attempt 3 times for login
  while (attempt < 3) {
    // Take input as user name from user
    //stdout.write('\nEnter your username: ');
    stdout.write('Enter your username: ');
    String? user = stdin.readLineSync();


    // Take input as password from user
    stdout.write('Enter your password: ');
    String? pass = stdin.readLineSync();

    if (user == username && pass == password) {
      // If username and password is correct, It will show Successful
      print('\nLogin Successful !');
      break;
    } else if (user == username && pass != password) {
      // If  password is wrong, It will show Incorrect password
      print('\nIncorrect password !');
    } else {
      print('\nUser not found! ');
    }

    attempt++;

    print('\nAttempt left: ${3 - attempt}');
    if (attempt == 3) {
      print("\nTry again later !");
    }
  }
}
