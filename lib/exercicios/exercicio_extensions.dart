
// ============================================
// EXERCÍCIOS DE EXTENSIONS
// ============================================

// Extensions permitem adicionar métodos a classes existentes
// sem modificar a classe original!

// ============================================
// EXERCÍCIO 1: Extension em String
// ============================================
// Crie uma extension em String chamada `StringUtils` com:
// - Método `capitalizar()` que retorna a string com primeira letra maiúscula
// - Getter `ehEmail` que retorna true se a string contém '@' e '.'

extension StringUtils on String{
  String capitalizar(){
  if(isEmpty) return this;
  return this[0].toUpperCase() + substring(1);
  }

  bool get ehEmail => contains('@') && contains(".");
}


// ============================================
// EXERCÍCIO 2: Extension em int
// ============================================
// Crie uma extension em int chamada `IntUtils` com:
// - Getter `ehPar` que retorna true se o número é par
// - Getter `ehImpar` que retorna true se o número é ímpar
// - Método `vezes(void Function(int) acao)` que executa uma ação N vezes

extension IntUtils on int{
  bool get ehPar => this % 2 == 0;


  bool get ehImpar => this % 2 != 0;


  void vezes(){
    for(var i = 0; i < this; i++){
      print("iteração $i");
    }
  }

}
void main(){
  print('abc'.capitalizar());
  print('teste@gmail.com'.ehEmail);

  2.ehImpar;
  2.ehPar;
  2.vezes();
}

// ============================================
// EXERCÍCIO 3: Extension em List<int>
// ============================================
// Crie uma extension em List<int> chamada `ListIntUtils` com:
// - Getter `soma` que retorna a soma de todos os elementos
// - Getter `media` que retorna a média dos elementos
// - Método `maioresQue(int valor)` que retorna uma nova lista só com valores maiores que o parâmetro

extension ListIntUtils on List<int>{
  double get soma => fold(0, (a, b) => a + b);
  double get media => isEmpty ? 0 : soma / length;

  List<int> maioresQue(final int valor){
    return where((n) => n > valor).toList();
  }

  }

// ============================================
// EXERCÍCIO 4: Extension em DateTime
// ============================================
// Crie uma extension em DateTime chamada `DateTimeUtils` com:
// - Getter `ehFimDeSemana` que retorna true se é sábado ou domingo
// - Método `formatoBR()` que retorna a data no formato "dd/MM/yyyy"

extension DateTimeUtils on DateTime{
  bool get ehFimDeSemana =>weekday == DateTime.saturday || weekday == DateTime.sunday;

  String formatoBr(){
   return '${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}/$year';
  }
}



// ============================================
// EXERCÍCIO 5: Extension em double
// ============================================
// Crie uma extension em double chamada `DoubleUtils` com:
// - Método `paraMoeda()` que retorna string formatada como "R$ X,XX"
// - Getter `arredondado` que retorna o valor arredondado para 2 casas decimais

// TODO: Crie a extension aqui

// ============================================
// EXERCÍCIO 6: Extension Genérica (DESAFIO)
// ============================================
// Crie uma extension genérica em List<T> chamada `ListGenericUtils` com:
// - Getter `primeiroOuNull` que retorna o primeiro elemento ou null se vazia
// - Getter `ultimoOuNull` que retorna o último elemento ou null se vazia
// - Método `agruparPor<K>(K Function(T) chave)` que agrupa elementos por uma chave

// TODO: Crie a extension aqui


/*
============================================
RESPOSTAS (não olhe antes de tentar!)
============================================

// Exercício 1:
extension StringUtils on String {
  String capitalizar() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  bool get ehEmail => contains('@') && contains('.');
}

// Exercício 2:
extension IntUtils on int {
  bool get ehPar => this % 2 == 0;
  bool get ehImpar => this % 2 != 0;

  void vezes(void Function(int) acao) {
    for (int i = 0; i < this; i++) {
      acao(i);
    }
  }
}

// Exercício 3:
extension ListIntUtils on List<int> {
  int get soma => fold(0, (acc, val) => acc + val);
  double get media => isEmpty ? 0 : soma / length;
  List<int> maioresQue(int valor) => where((e) => e > valor).toList();
}

// Exercício 4:
extension DateTimeUtils on DateTime {
  bool get ehFimDeSemana => weekday == DateTime.saturday || weekday == DateTime.sunday;

  String formatoBR() {
    return '${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}/$year';
  }
}

// Exercício 5:
extension DoubleUtils on double {
  String paraMoeda() {
    return 'R\$ ${toStringAsFixed(2).replaceAll('.', ',')}';
  }

  double get arredondado => double.parse(toStringAsFixed(2));
}

// Exercício 6:
extension ListGenericUtils<T> on List<T> {
  T? get primeiroOuNull => isEmpty ? null : first;
  T? get ultimoOuNull => isEmpty ? null : last;

  Map<K, List<T>> agruparPor<K>(K Function(T) chave) {
    final Map<K, List<T>> resultado = {};
    for (final item in this) {
      final k = chave(item);
      resultado.putIfAbsent(k, () => []).add(item);
    }
    return resultado;
  }
}

// No main:
print('levy'.capitalizar()); // Levy
print('teste@email.com'.ehEmail); // true
print('teste'.ehEmail); // false

print(4.ehPar); // true
print(5.ehImpar); // true
3.vezes((i) => print('Iteração $i'));

print([1, 2, 3, 4, 5].soma); // 15
print([1, 2, 3, 4, 5].media); // 3.0
print([1, 2, 3, 4, 5].maioresQue(3)); // [4, 5]

print(DateTime(2024, 1, 13).ehFimDeSemana); // true
print(DateTime(2024, 1, 15).formatoBR()); // 15/01/2024

print(1234.567.paraMoeda()); // R$ 1234,57
print(3.14159.arredondado); // 3.14

print(<String>[].primeiroOuNull); // null
print(['Ana', 'André', 'Bruno'].agruparPor((s) => s[0])); // {A: [Ana, André], B: [Bruno]}

*/
