import 'conta.dart';
import 'dart:io';

class CaixaEletronico{
  Conta conta; 

  CaixaEletronico(this.conta);

  void iniciar(){
    print("Bem vindo ao caixa eletrônico!!");
    print("Titular: ${conta.nome} | Saldo: ${conta.saldo}");
    print("1 - Ver saldo");
    print("2 - Depositar");
    print("3 - Sacar");
    print("4 - Sair");
    print("Escolha uma opção:");
    String? escolha = stdin.readLineSync();

    switch(escolha){
      case '1':
        conta.exibirSaldo();
        break;
      case '2':
        print('Digite o valor do depósito:');
        double valor = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        conta.depositar(valor);
        break;
      case '3':
        print('Digite o valor do saque:');
        double valor = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        conta.sacar(valor);
        break;
      
        

    }
  }

  
}

