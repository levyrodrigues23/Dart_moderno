import 'dart:collection';

void main(){
  // lista simples
  final numeros = [1,2,3,4,5];

  // filled

  final filledGrow = List.filled(10, '');

  // imutable list

  final listaImutavel = List.filled(10, '', growable: true);


// essa lista também não pode ser modificada
  final numerosImutavel = UnmodifiableListView(numeros);



}
