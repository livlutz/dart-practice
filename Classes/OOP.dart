
//import 'Person.dart';
import 'PessoaFisica.dart'; //import 'PessoaFisica.dart
import 'PessoaJuridica.dart'; //import 'PessoaJuridica.dart

void main(List <String> arguments){
  /*Person p1 = new Person("John", "123 Main St.");
  print(p1);*/

  var pessoaFisica1 = new PessoaFisica("John", "123 Main St.", "123.456.789-00");
  print(pessoaFisica1);

  var pessoaJuridica1 = new PessoaJuridica("John", "123 Main St.", "12.345.678/0001-00");
  print(pessoaJuridica1);
}