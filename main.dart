import 'caixa.dart';
import 'conta.dart';

main(){

  Conta conta = Conta(nome: 'Vinícius', saldo: 1000.0);
  CaixaEletronico caixa = CaixaEletronico(conta);
  caixa.iniciar();
}