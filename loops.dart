import 'dart:io';
import 'dart:convert';
void main(List<String> args) {
  var text= "My first for loop";
  var result=0,r=0;

  //for loop
  
  for(var i=0;i<=100;i++){
    print(i);
    result+=i;
    print("$i - Result: $result");
  }
  print(result);

  print("How many numbers?");
  var line=stdin.readLineSync(encoding: utf8);
  var qtd=int.parse(line ?? "0");

  for(var i=0;i<qtd;i++){
    print("Number: ");
    line=stdin.readLineSync(encoding: utf8);
    var number=int.parse(line ?? "0");
    r+=number;
    print("$i - Result: $r");
  }

  for(var i = 0;i < text.length;i++){
    print(text[i]);
  }

  var names=["John","Mary","Peter","Sue","John"];

  for(var i=0;i<names.length;i++){
    print(names[i]);
  }

  //for each - in

  var numbers=[1,5,9,50,85,45,90,74];
  var acc = 0;

  for(var n in numbers){
    acc += n;
    print(n);
  }
  print(acc);

  var letters = ["B","A","C","D","E","F"];

  for(var l in letters){
    print(l);
  }

  letters.forEach((element) { 
    print(element);
  });

  //while loop

  var count = 0,total=10;

  while(count<total){
    print(count);
    count++; // add 1 to count, so it will stop when count = 10
  }

  print("Type a number or 'S' to quit: ");
  var input = stdin.readLineSync(encoding: utf8);
  double a = 0;

  while(input != "S"){
    a += double.parse(input ?? "");
    print("Type a number or 'S' to quit: ");
    input = stdin.readLineSync(encoding: utf8);
  }
  print(a);

  //do while loop

  //will run at least once

  var option = "";
  var acc2 = 0.0;

  do{
    print("Type a number or 'S' to quit: ");
    line = stdin.readLineSync(encoding: utf8);
    option = line ?? "";
    var num = double.tryParse(option);
    if(num != null){
      acc2 += num;
    }
    
  } while(option != "S");

  print(acc2);



}