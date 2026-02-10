// record posicional

void posicional(){
  var ponto = (10, 20, 'joao');
  print('ponto: ${ponto.$1}, ${ponto.$2}, ${ponto.$3}');

  // posso tambem fazer o destruction dele

  final (posicao1, posicao2, posicao3) = ponto;
    print('ponto: $posicao1, $posicao2, $posicao3');
}

// record nomeado

void nomeado(){
  final ponto = (
    name: 'jose levy',
    idade: 42,
    curso: "ads");

    print("ponto: ${ponto.name}, ${ponto.idade}, ${ponto.curso}");
    final (name: posicao1, idade:posicao2, curso: posicao3) = ponto; 
}
