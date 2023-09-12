import 'Person.dart';

class PessoaJuridica extends Person{
  String _cnpj = "";

  void setCnpj(String cnpj){
    _cnpj = cnpj;
  }

  String getCnpj(){
    return _cnpj;
  }

  //constructor
  PessoaJuridica(String name, String address,String cnpj):super(name,address){
    _cnpj = cnpj;
  }

  //override toString method
  @override
  String toString(){
    return {"Name": GetName(), "Address": GetAddress(), "CNPJ":_cnpj}.toString();
  }
 
}