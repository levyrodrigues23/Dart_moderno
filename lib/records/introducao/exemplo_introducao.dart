// 1 -  record só é possivel a utilização a partir do dart 3+
// 2 - ele é um agregador

class Cooordenadas{
  final double latitude;
  final double longitude;

  Cooordenadas(this.latitude, this.longitude);
}

Cooordenadas  obterCordenadas(){
 return Cooordenadas(20, -20);
}

// há um anonimato que eu não preciso colocar retorno, e ele é imutavel por padrão, se assemelha a uma tupla em python
(double, double)  obterCordenadasRecord(){
 return (20, -20);
}


void main(){
  final (latitude, longitude) = obterCordenadasRecord();
  print(latitude);
  print(longitude);

  //agregador

  final pessoa = ('nome', 18, true, 43.5, Cooordenadas(latitude, longitude), (10,20));

final mapaX = {'valor': "1"};
mapaX['valor'] = "2";

// um record é anonimo, é agregador e imutável, sendo impossivel alterar o valor depois de inicializado.

}
