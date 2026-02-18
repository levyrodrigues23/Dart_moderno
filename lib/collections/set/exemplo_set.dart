void main(){

  final numeros = <int>{30,40,50,40};
  for (var numero in numeros) {
    print(numero);
  }


final pessoas = {Pessoa("rose levy"), Pessoa('rose levy'), Pessoa('other people')};
// isso aqui em cima funcionou por causa da referencia de memoria, não senod utilizado um equals.
print(pessoas);

}

class Pessoa {
  String nome;
  Pessoa(this.nome);

  @override
  String toString() {

    return 'pessoa $nome';
  }




  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pessoa &&
      other.nome == nome;
  }

  @override
  int get hashCode => nome.hashCode;
}
