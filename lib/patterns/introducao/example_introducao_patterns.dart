
// estudando um pouco sobre pattern matching, é uma espécie de padrão que tem que atender uma certa necessidade.
void main(){
  final lista = <dynamic>[1,'2',3, 'A'];
  if(lista case [int primeiro, int segundo, int terceiro, ...]){
    print("os tres primeiros parametros são inteiros [$primeiro, $segundo, $terceiro]");

  } else{
    print("desculpe mas um dos tres parametros não são inteiros");
  }
}
