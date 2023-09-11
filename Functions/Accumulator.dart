import 'dart:io';
import 'dart:convert';
import 'utils.dart' as utils;

void main(List <String> arguments){
  var input = utils.readConsole("Type a number or 'S' to quit: ");
  double accumulator = 0.0;
  List<double> numeros = [];

  while(input != "S"){
    numeros.add(double.parse(input));
    input = utils.readConsole("Type a number or 'S' to quit: ");
  }

  print(utils.sumList(numeros));
}
