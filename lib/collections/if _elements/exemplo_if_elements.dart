
final incluirChave = false;
final incluirLaranja = false;


void main(){
  final frutas = ['maça', 'banana', if(incluirLaranja) 'laranja' else 'abacaxi', 'pera'];


  final frutasMap = {'m':'maça',
   'b' : 'banana',
    if(incluirLaranja) 'l': 'laranja' else 'a':'abacaxi',
    'p':'pera'};
  print(frutas);
  print(frutasMap);

}
