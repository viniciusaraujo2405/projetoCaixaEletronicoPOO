import 'caixa.dart';
import 'conta.dart';

main(){
  Conta conta = Conta(nome: 'Vinícius', saldo: 1000.0);
  Conta conta2 = Conta(nome: 'Gaita', saldo: 0);
  CaixaEletronico caixa = CaixaEletronico(conta);
  CaixaEletronico caixa2 = CaixaEletronico(conta2);
  caixa.iniciar();
  caixa2.iniciar();
}