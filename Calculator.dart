import 'dart:convert';
import 'dart:io';
void main(List<String> args) {

  var line;

  print("1st number: ");
  line = stdin.readLineSync(encoding: utf8);
  var number1 = double.parse(line ?? "0");

  print("2nd number: ");
  line = stdin.readLineSync(encoding: utf8);
  var number2 = double.parse(line ?? "0");

  print("Operation: ");
  line = stdin.readLineSync(encoding: utf8);
  var op = line ?? "";

  double result = 0;

  switch(op){
    case "+":
      result = number1 + number2;
      break;
    case "-":
      result = number1 - number2;
      break;
    case "*":
      result = number1 * number2;
      break;
    case "/":
      result = number1 / number2;
      break;

    default:
      print("Invalid operation");
  }

  print("Operation: $op");
  print("Result: $result");
}