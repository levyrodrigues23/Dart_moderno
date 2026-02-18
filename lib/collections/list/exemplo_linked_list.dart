import 'dart:collection';

base class Item extends LinkedListEntry<Item> {
  final int value;
  Item(this.value);


  @override
  String toString() {

    return '$value';
  }
}

void main(){
  final linkedList = LinkedList<Item>();
  linkedList.add(Item(1));
  linkedList.add(Item(2));
  linkedList.add(Item(3));
  linkedList.add(Item(4));
  linkedList.add(Item(5));

  for(final num in linkedList){
    print(num);
  }
}
