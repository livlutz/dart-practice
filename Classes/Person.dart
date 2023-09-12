
//abstract class cannot be instantiated
abstract class Person{

  //_ means private
  String _name = "";
  String _address = "";

  void SetName(String name){
    _name = name;
  }

  String GetName(){
    return _name.toUpperCase();
  }

  void SetAddress(String address){
    _address = address;
  }

  String GetAddress(){
    return _address;
  }

  //constructor
  Person(String name, String address){
    _name = name;
    _address = address;
  }

  //override toString method
  @override
  String toString(){
    return {"Name": _name, "Address": _address}.toString();
  }
 
}