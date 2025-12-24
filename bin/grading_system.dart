import 'dart:io';

void main() {
  print('\nWelcome to Grading System !');


  stdout.write('\nBangla  : ');
  String? bangla = stdin.readLineSync();
  int? banglaNum = int.tryParse(bangla ?? '');

  stdout.write('English : ');
  String? english = stdin.readLineSync();
  int? englishNum = int.tryParse(english ?? '');

  stdout.write('Math : ');
  String? math = stdin.readLineSync();
  int? mathNum = int.tryParse(math ?? '');

  stdout.write('Science : ');
  String? science = stdin.readLineSync();
  int? scienceNum = int.tryParse(science ?? '');

  stdout.write('ICT : ');
  String? ict = stdin.readLineSync();
  int? ictNum = int.tryParse(ict ?? '');

//---If user enter anything except number, App will be show the value.----------------
  //---Null error handle---------------
  if(banglaNum == null || englishNum == null || mathNum == null || scienceNum == null || ictNum == null) {

    print('\nThere is unexpected value! Enter only integer number. Please check.');
    print('\nBangla number: $bangla');
    print('English number: $english');
    print('Math number: $math');
    print('Science number: $science');
    print('ICT number: $ict');
  }

  //---If there is no error or null value programme will calculate all subject number------------

  while (banglaNum != null && englishNum != null && mathNum != null && scienceNum != null && ictNum != null) {

    int totalNumber = (banglaNum + englishNum + mathNum + scienceNum + ictNum);
    int alSubject = 5;
    double result = totalNumber / alSubject;
    if (result >= 80) {
      print('\nYou have got GPA is A+. Total number $totalNumber ');
    } else if (result >= 70) {
      print('\nYou have got GPA is A. Total number $totalNumber ');
    } else if (result >= 60) {
      print('\nYou have got GPA is A-. Total number $totalNumber ');
    } else if (result >= 50) {
      print('\nYou have got GPA is B. Total number $totalNumber ');
    } else if (result >= 40) {
      print('\nYou have got GPA is C. Total number $totalNumber ');
    } else if (result >= 33) {
      print('\nYou have got GPA is D. Total number $totalNumber ');
    } else{
      print('\nYou have got GPA is F. Total number $totalNumber ');
      print('You need to study more !');
    }
    break;
  }
}
