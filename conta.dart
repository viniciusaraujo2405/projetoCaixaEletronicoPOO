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

  


}