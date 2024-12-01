class Conta{
  String nome;
  double saldo;

  Conta({required this.nome, this.saldo = 0});
  void depositar(double valor){
    saldo = saldo + valor;
  }
  bool sacar(double valor){
    if (saldo>=valor){
      saldo = saldo - valor;
      print("Saque de $valor realizado com sucesso!!");
      return true;
    }else{
      print("Saldo insuficiente!");
      return false;
    }
  }
  void exibirSaldo(){
    print('Titular: $nome, Saldo: $saldo');
  }

  bool transferir(Conta contaDestino, double valor){
    if(sacar(valor)){
      contaDestino.depositar(valor);
      print('Transferência de R\$${valor.toStringAsFixed(2)} para ${contaDestino.nome} realizada com sucesso!');
      return true;
    }else{
      print('Transferência falhou, saldo insuficiente.');
      return false;
    }
  }

  


}