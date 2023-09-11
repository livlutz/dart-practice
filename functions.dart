import 'dart:js_util';

void main(List<String>arguments){
  printHelloWorld();
  print(returnNumber());
  var r = sum(30,60);
  var calcFactorial = factorial(10);
  print(r);
  print(calcFactorial);

  printName("AAAAAAAAAA");
  //the optional parameter 
  printName("AAAAAAAAAA",LastName: "BBBBBBBBBBB");

  printData("text");
  printData(add(5, 6).toString());

  print(execute(10, increment));
  print(execute(10, decrement));
}

void printHelloWorld(){
  print('Hello World');
}

int returnNumber(){
  return 30;
}

int sum(int number1, int number2){
  return number1 + number2;
}

//recursive function

int factorial(int number){
  if(number==1){
    return 1;
  }
  return number*factorial(number-1);
}

//functions with optional parameters

/*using keys to show the optional parameters
  ? is used to show that the parameter can have a null value
*/
void printName(String name,{String? LastName}){
  print("My name is: $name");
  if(LastName!=null){
    print("My last name is: $LastName");
  }
}

//arrow function
//for smaller functions
void printData(String text) => print(text);

int add (int n1, int n2) => n1+n2;

//functions as parameters

int increment(int number){
  return number + 1;
}

int decrement(int number){
  return number - 1;
}

int execute(int n, Function func){
  return func(n);
}
