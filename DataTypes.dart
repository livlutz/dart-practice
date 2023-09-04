
//arguments works similar to argv in C
void main (List<String>arguments){
  
  //Dart is a strongly typed language
  //var is a dynamic type, it can be anything

  //--------------- string -----------------//

  String txt = "DIO";

  var txt2 =  "Trilha de flutter e DART";

  print(txt);
  print(txt2);

  //check if string is empty
  print(txt2.isEmpty);
  print("".isEmpty);
  print(" ".isEmpty);

  //check string lenght
  print(txt.length);
  print(txt2.length);

  //lower and upper case
  print(txt.toLowerCase());
  print(txt.toUpperCase());

  //check if string contains another string
  print(txt.contains(txt2));

  //getting part of a string
  print(txt.substring(3));
  print(txt.substring(0,3));

  //getting index of a string
  print(txt2.indexOf("flutter"));

  //substituting a string for another
  print(txt2.replaceAll("a", "@"));

  //splitting a string
  print(txt2.split("a"));

  //removing spaces
  print(txt2.trim());
  print(" dio ".trimLeft());
  print(" dio ".trimRight());

  /*--------------- int -----------------*/
  int num1 =10;
  var num2 = 11;
  int num3;

  print("Returns true if the number is even");
  print(num1.isEven);
  print(num2.isEven);

  print("Returns true iff the number is odd");
  print(num1.isOdd);
  print(num2.isOdd);

  print("Returns true if the number is finite");
  print(num1.isFinite);

  print("Returns true if the number is infinite");
  print(double.infinity);

  print("Returns if a number is not a number");
  print(num1.isNaN);

  print("Return if a number is negative");
  print(num1.isNegative);
  print((num1 * -1).isNegative);

  print("converts string to int");
  print(int.parse("10"));
  //print(int.parse("teste"));,it gives an error, so use tryparse
  print(int.tryParse("teste"));

  /*--------------- double -----------------*/
  double num4 = 10.1;
  var num5 = 11.1;

  print("Removes the decimal part of the number");
  print(num4.truncate());
  print(num5.truncate());

  print("converts to int");
  print(num4.toInt());
  print(num5.toInt());

  print("number is approximated to the nearest (larger) integer");  
  print(num4.ceil());
  print(num5.ceil());

  print("number is approximated to the nearest (smaller) integer");
  print(num4.floor());
  print(num5.floor());

  print("Returns true if the number is finite");
  print(num4.isFinite);
  print(double.infinity.isFinite);

  print("Returns true if the number is infinite");
  print(num4.isInfinite);
  print(double.infinity.isInfinite);

  print("Returns true if the number is not a number");
  print(num4.isNaN);
  print(double.nan.isNaN);

  print("Returns true if the number is negative");
  print(num4.isNegative);
  print((num4 * -1).isNegative);

  print("converts string to double");
  print(double.parse("10.1"));
  //print(double.parse("teste")) gives an error, so use tryparse
  print(double.tryParse("teste"));

  /*--------------- bool -----------------*/
  var varTrue = true;
  bool varFalse = false; //false is default

  //we can use all logical operators with bool
  print(varTrue);
  print(varFalse);
  print(!varTrue);
  print(!varFalse);
  print(varTrue == varFalse);

  //--------------- lists -----------------//
  //string list
  List<String> lista = [];

  //add string to list
  lista.add("A");

  //list with type dynamic
  var lista1 = [];

  //add anything to list
  lista1.add(1);
  //lista1.add("A");
  lista1.add(2.1);

  print(lista.length);
  print(lista);
  print(lista1);

  print("remove element from list");
  lista1.remove(1);
  print(lista1);

  //check if list is empty
  print(lista.isEmpty);

  //checks if list contains an element
  print(lista.contains("A"));

  //where is the element in the list
  print(lista1.where((x) => x > 0 && x < 99));

  print(lista1.reversed);

  //--------------- maps -----------------//
  //maps are like dictionaries in python
  Map<String, dynamic> map1 = Map<String, dynamic>(); 
  var map = {'zero' : 0, 'one' : 1, 'two' : 2};

  print(map1);
  print(map);

  //gettinf a value by key
  print(map["one"]);

  map.addAll({'ten' : 10, 'eleven' : 11});

  print("if empty");
  print(map1.isEmpty);  
  print(map1.isNotEmpty);

  print("size");
  print(map1.length);

  //check if map contains a key
  print(map.containsKey("eleven"));

  /*--------------- const -----------------*/
  //it is a constant, it can't be changed
  const String var1 = "ABC";
  print(var1);

  /*--------------- dynamic -----------------*/
  //it can be anything
  dynamic var2 = "ABC";
  print(var2);
  var2 = 123;
  print(var2);

  /*--------------- DateTime -----------------*/
  //it is a date, time, current time, etc
  DateTime data1 = DateTime.now();
  data1 = DateTime.parse("2023-09-02 00:00:00");
  print(data1);
  print(data1.year);
  print(data1.month);
  print(data1.day);
  print(data1.hour);
  print(data1.minute);
  print(data1.second);
  print(data1.millisecond);
  print(data1.microsecond);

  //weeekday
  print(data1.weekday);

  //add days
  print(data1.add(Duration(days: 1)));
  print(data1.subtract(Duration(hours: 1)));

  var data2 = DateTime.parse("2022-02-01 00:00:00");
  print(data1.isAfter(data2));
  print(data1.isBefore(data2));
  print(data1.compareTo(data2));

}
