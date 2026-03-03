void main(){


  var (:a,:b) = (a: 10, b: 20);
  print('$a , $b');
  (a,b ) = (b,a);

  // destructuring can to be used to change the values of variables

  print('$a , $b');

  var pessoas = {
    'nome': 'levy',
    'idade': '19'
  };

  var {'nome': nome, 'idade': idade} = pessoas;

  print(nome);

  (String, int) buscarPessoa(){
    return ('levy', 19);
  }

  var (name, idadee) = buscarPessoa();
  print(name);


}
