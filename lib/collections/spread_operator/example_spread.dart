void main(){
  final lista1 = List.generate(10, (i) => i);
  final lista2 = List.generate(10, (i) => i+10);
  print(lista1);
  print(lista2);
  final listaCompleta = [...lista1, ...lista2];
  // isso que é um spread operator, eu consigo finalmente juntar duas listas
  
  lista1.addAll(lista2);
  print(lista1);
  print(listaCompleta);
}
