void matching(){
  dynamic a = 10;

  if(a case int n){
    // aqui é que deu match
  }

}


void destructuring(){
  final lista = [1,2,3];

  final [a,b,c] = lista;2



  // para fazer o destructuring da lista é preciso que o tamanho dos elementos atenda, ou voce colocar o resto ou _.

  var record = (nome: 'jose levy', idade: 19);

  var (nome: name, idade: age) = record;

  var recordPosicional = ('jose levy', 19);
  var (n, i) = recordPosicional;
}
