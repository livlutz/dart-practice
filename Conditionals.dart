import 'dart:convert'; // for utf8
import 'dart:io'; // for stdin

void main(List<String> arguments){
  var exam1 = 9;
  var exam2 = 5;
  var mean = (exam1 + exam2) / 2;

  //using logical operators

  print(mean);
  print(mean >= 7);
  print(mean < 7);
  print(exam1 == exam2);
  print(exam1 != exam2);
  print((exam1 >= 7) && (exam2 >= 7));
  print((exam1 >= 10) && (exam2 >= 10));

  //if statement

  if(mean >= 7.0){
    print("O aluno passou, com a nota: $mean");
  }

  else if((mean >= 5) && (mean<7)){
    print("O aluno está de recuperação, com a nota: $mean");
  }

  else{
    print("O aluno reprovou com a nota: $mean");
  }

  var result = (exam1 >= 7) ? "Pass" : "Fail";

  print(result);

  //reading input

  /*use terminal with dart run to get input
    Example: cd to the directory containing the project
    type dart run filename.dart
  */
  print("1st mark: ");

  var line = stdin.readLineSync(encoding: utf8);
  print(line);
  var p1 = int.parse(line == null ? "0" : line);

  print("2nd mark: ");
  line = stdin.readLineSync(encoding: utf8);
  var p2 = int.parse(line ?? "0"); // if null, 0 is assigned, else the value is assigned

  var media = (p1+p2)/2;

  if(media >= 7.0){
    print("O aluno passou, com a nota: $media");
  }

  else if((media >= 5) && (media < 7)){
    print("O aluno está de recuperação, com a nota: $media");
  }

  else{
    print("O aluno reprovou com a nota: $media");
  }

  var resultado = (p1 >= 7) ? "Pass" : "Fail";

  print(resultado);

}