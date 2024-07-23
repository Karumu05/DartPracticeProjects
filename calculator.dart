import 'dart:io';
void main() {
stdout.write('Please enter your first number ');
double num1 = double.parse(stdin.readLineSync() ?? '');

stdout.write('Please enter your second number ');
double num2 = double.parse(stdin.readLineSync() ?? '');

stdout.write('Please choose and operator (+, -, +, /) ');
String opertation = stdin.readLineSync() ?? '';

double result;

switch (opertation) {
  case '+': 
   result = num1 + num2;
   break;
  case '-':
    result = num1 - num2;
    break;
  case '*':
    result = num1 * num2;
    break;
  case '/':
    result = num1 / num2;
    break;
  default:
    print('Invalid operation');
    return;
}

print('Result: $result');


}