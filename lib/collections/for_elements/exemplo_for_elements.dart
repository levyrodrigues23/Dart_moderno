void main(){
  final numeros =  List.generate(10, (i) => i);
  final listaBatatas = [
    'Batata Inicial',
    for(final n in numeros) 'batata $n ',
    'Batata Final',
  ];
  final listaN = [1, for(final n in numeros) n, 100  ];
  print(listaN);
// i like it.
// to do with set, it's just put {} as put [].
// but if I want to make this using a Map? How I can do this?

  final listaBatatasMap = <String, String>{
    'inicial': 'Batata Inicial',
    for(final n in numeros) '$n': 'batata $n ',
    'final' : 'Batata Final',
  };

// it's almost the same thing, just there is a difference if we compare with others due the Map to use paramers <key, value>.
// i like batata, that's why I use it for my example.



print(listaBatatas);
print(listaBatatasMap);

}
