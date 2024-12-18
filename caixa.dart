import 'conta.dart';
import 'dart:io';

class CaixaEletronico {
  Conta conta; 

  CaixaEletronico(this.conta);

  void iniciar() {
    bool continuar = true;

    while (continuar) {
      print("Bem-vindo ao caixa eletrônico!!");
      print("1 - Ver saldo");
      print("2 - Depositar");
      print("3 - Sacar");
      print("4 - Transferir");
      print("5 - Sair");
      print("Escolha uma opção:");
      String? escolha = stdin.readLineSync();

      switch (escolha) {
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
        case '4':
          
          print('Digite o titular da conta destino:');
          String? titularDestino = stdin.readLineSync();

          
          if (titularDestino != null && titularDestino.isNotEmpty) {
            print('Digite o valor da transferência:');
            double valorTransferencia = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

            
            Conta contaDestino = Conta(nome: titularDestino);
            
           
            if (conta.transferir(contaDestino, valorTransferencia)) {
              print('Transferência realizada com sucesso!');
              
             
              contaDestino.exibirSaldo();
            } else {
              print('Falha na transferência!');
            }
          } else {
            print('Nome do titular da conta destino inválido.');
          }
          break;
        case '5':
          continuar = false;
          print('Encerrando o programa.');
          break;
        default:
          print('Opção inválida. Tente novamente.');
      }
    }
  }
}
