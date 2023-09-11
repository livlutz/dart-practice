import 'dart:convert';
import 'dart:io';
void main(List<String> args) {

  print("Welcome to the calculator");

  var number1 = readDouble("1st number: ");

  var number2 = readDouble("2nd number: ");

  var op = readConsole("Operation (+,-,*,/): ");

  calculator(op, number1, number2);
}

double readDouble(String text){
  var numero = double.tryParse(readConsole(text));
  
  if(numero == null){
    print("Invalid number set to 0");
    return 0.0;
  }

  else{
    return numero;
  }
}

void calculator(String op, double number1, double number2){
  double result = 0;

  switch(op){
    case "+":
      result = sum(number1, number2);
      break;
    case "-":
      result = sub(number1, number2);
      break;
    case "*":
      result = mult(number1, number2);
      break;
    case "/":
      result = div(number1, number2);
      break;

    default:
      print("Invalid operation");
  }

  print("Operation: $op");
  print("Result: $result");
}

double sum(double number1, double number2){
  return number1 + number2;
}

double sub(double number1, double number2){
  return number1 - number2;
}

double mult(double number1, double number2){
  return number1 * number2;
}

double div(double number1, double number2){
  if(number2 == 0){
    print("Zero division error");
    exit(0);
  }
  else{
    return number1 / number2;
  }
}

String readConsole(String s){
  print(s);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}
