
import 'Person.dart';

class PessoaFisica extends Person{

  String _cpf = "";


  void setCpf(String cpf){
    _cpf = cpf;
  }

  String getCpf(){
    return _cpf;
  }


  //constructor
  PessoaFisica(String name, String address,String cpf):super(name,address){
    _cpf = cpf;
  }

  //override toString method
  @override
  String toString(){
    return {"Name": super.GetName(), "Address": super.GetAddress(), "CPF":_cpf}.toString();
  }
 
}