import 'conta.dart';

class CaixaEletronico{
  Conta conta; 

  CaixaEletronico(this.conta);

  void iniciar(){
    print("Bem vindo ao caixa eletrônico!!");
    print("Titular: ${conta.nome} | Saldo: ${conta.saldo}");
    print("Escolha uma opção:");
    print("1 - Depositar");
    print("2 - Sacar");
    print("3 - Exibir saldo");
    print("4 - Sair");
  }

  
}