//reads a string from the console
import 'dart:io';
import 'dart:convert';

String readConsole(String s){
  print(s);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
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

double sum(double number1, double number2){
  return number1 + number2;
}

double sumList(List<double>numbers){
  double accumulator = 0.0;
  for(var number in numbers){
    accumulator = sum(accumulator,number);
  }
  return accumulator;
}