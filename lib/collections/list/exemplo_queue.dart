import 'dart:collection';
void main(){
final fila = Queue<int>.from([1,2,3,4,5]);
final itemRemovido = fila.removeLast();
print(fila);
print(itemRemovido);
}
