class Pessoa{
  final String name;
  final int age;

  Pessoa(this.name, this.age);


  void metodoQualquer(){}


}



void main(){
// listas

final lista = [10,20,30];
final [a, b, c] = lista;
// da forma como eu fiz acima eu estou desestruturando uma lista, atribuindo variáveis aos elementos da lista, no caso de eu extrair elementos que não contenham, vai dar erro de execução, e não de complicação


  final listaMaior = [10,20,30,40,50,60,70,80,90];
  final [d,e,f, ...] = listaMaior; // esse tres potinhos é o que chamaos de rest elements
  final [g,h,i, ...resto] = listaMaior;

  print("$g, $h, $i, $resto");
  // chamamos isso de rest operator

final [primeiro,...meio, ultimo] = listaMaior;
  print("$primeiro, $meio, $ultimo");

  // essa prática de destructruring aparentemente é bem poderoso principalmente pr causa dessa prática que ele tem com restos
  // se eu quisesse colocar penultimo, eu poderia fazer isso facilmente

  // destruturação por meio de records

  final record = ('levy', 19);
  final (nome, idade) = record;

  final recordNomeado = (nome: 'levy', idade: 19);

  final (nome: nomeNomeado, idade: idadeNomeado) = recordNomeado;

  final recordNomeado2 = (nome2: 'levy', idade2: 19);
  final (:nome2, :idade2) = recordNomeado2; // essa prática é interessante porque quando eu faço : eu estou  me baseando no label que tem dentro da variavel que estou fazendo o destructuring

  print(nome2);

  final pessoa = Pessoa("levy", 19);
  final Pessoa(:age, :name, :metodoQualquer) = pessoa;


final nameStr = 'jose levy';
final String(:toLowerCase) = nameStr;

toLowerCase();



}
