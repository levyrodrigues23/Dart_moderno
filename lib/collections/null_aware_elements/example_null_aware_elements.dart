String? nome;
String? sobrenome;


String? chaveOptional;
String? valorOptional;

void main(){


  var listaNomes = <String>[
    'levy',
    'lara',
    'julia',
    ?nome
  ];

final mapa = <String, String>{
  'chave1': 'valor1',
  ?chaveOptional : ?valorOptional,
   'chave2': ''
};
// '?' sem as aspas é claro é a mesma coisa q eu fazer if(variavel != null) variavel! para forçar.
// achei uma pratica bem interessante e curta, diminui o ódio q eu sinto desse null safety do dart

// isso tudo é louco porque a única coisa q eu faço é um ponto de interrogação, resolve todos os problemas de nullabe, bendito é o null aware elements.3

print(listaNomes);
print(mapa);
}
