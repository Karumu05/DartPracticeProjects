import 'dart:io';

void main() {

//user input

stdout.write('Please Enter Temperature: ');
var input = stdin.readLineSync();

stdout.write('Convert to (F)arenheit or (C)elsius? ');
var choice = stdin.readLineSync()?.toLowerCase();

//parsing the input

var temperature = double.tryParse(input ?? '');
if (temperature == null) {
    print('Temperature is not valid');
    return;
}

//logic

double result;
String unit;

if (choice == 'f'){
  result = temperature * 9 / 5 + 32;
  unit = 'F';
} else if (choice == 'c'){
  result = (temperature - 32) * 5 / 9;
  unit = 'C';
} else {
  print('Invalid choice');
  return;
}

print('$temperature ${unit == 'F' ? 'C' : 'F'} is $result $unit');

}