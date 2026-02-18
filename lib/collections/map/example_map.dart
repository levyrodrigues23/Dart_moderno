void main(){
  final estoque = <String, int>{'Maça': 10, 'batata': 18, 'macarrao': 21};
  final estoqueDeBatata = estoque['batata'];
  print(estoqueDeBatata);
  estoque['laranja'] = 53;
  print(estoque);

  estoque.addAll({'abacaxi': 10});
  print(estoque);


// é interessante se um detemrinado elemento do mapa estiver vazio ou nn
  estoque.putIfAbsent('abacaxi', () => 100);

  // iterar por chave
  for(String chave in estoque.keys){
    print(chave);
  }


  print('iterando por entradas');

  for(MapEntry<String, int> entry in estoque.entries){
    print('chave: ${entry.key} and his respective value is (${entry.value})');
  }
}
