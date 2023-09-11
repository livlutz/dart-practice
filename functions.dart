void main(List<String>arguments){
  printHelloWorld();
  print(returnNumber());
  var r = sum(30,60);
  print(r);
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
