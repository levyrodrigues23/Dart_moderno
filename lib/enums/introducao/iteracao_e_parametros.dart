enum Direcao {
  norte, sul, leste, oeste
}



void main(){
  var valoresEnum = Direcao.values;

  print('${Direcao.leste.index}: ${Direcao.leste.name}');

  for(final v in valoresEnum){

    print('${v.index}: ${v.name}');
  }
}
