void main(){
  final numeros = List.generate(20, (i) => i*43);

  for (var n in numeros) {

  }
  for(final (indice, valor) in numeros.indexed){
    print('indice: $indice ($valor)');
  }
}
