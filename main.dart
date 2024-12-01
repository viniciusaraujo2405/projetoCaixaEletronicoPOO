import 'caixa.dart';
import 'conta.dart';
main (){
  Conta conta = Conta(nome: 'Vinícius');
  CaixaEletronico caixa = CaixaEletronico(conta);
  caixa.iniciar();


}