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

// TODO: Crie a extension aqui

// ============================================
// EXERCÍCIO 2: Extension em int
// ============================================
// Crie uma extension em int chamada `IntUtils` com:
// - Getter `ehPar` que retorna true se o número é par
// - Getter `ehImpar` que retorna true se o número é ímpar
// - Método `vezes(void Function(int) acao)` que executa uma ação N vezes

// TODO: Crie a extension aqui

// ============================================
// EXERCÍCIO 3: Extension em List<int>
// ============================================
// Crie uma extension em List<int> chamada `ListIntUtils` com:
// - Getter `soma` que retorna a soma de todos os elementos
// - Getter `media` que retorna a média dos elementos
// - Método `maioresQue(int valor)` que retorna uma nova lista só com valores maiores que o parâmetro

// TODO: Crie a extension aqui

// ============================================
// EXERCÍCIO 4: Extension em DateTime
// ============================================
// Crie uma extension em DateTime chamada `DateTimeUtils` com:
// - Getter `ehFimDeSemana` que retorna true se é sábado ou domingo
// - Método `formatoBR()` que retorna a data no formato "dd/MM/yyyy"

// TODO: Crie a extension aqui

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

void main() {
  print('=== Exercício 1: Extension em String ===');
  // TODO: Teste capitalizar() e ehEmail
  // 'levy'.capitalizar() deve retornar 'Levy'
  // 'teste@email.com'.ehEmail deve retornar true

  print('\n=== Exercício 2: Extension em int ===');
  // TODO: Teste ehPar, ehImpar e vezes()
  // 4.ehPar deve ser true
  // 3.vezes((i) => print('Iteração $i'))

  print('\n=== Exercício 3: Extension em List<int> ===');
  // TODO: Teste soma, media e maioresQue
  // [1, 2, 3, 4, 5].soma deve ser 15
  // [1, 2, 3, 4, 5].maioresQue(3) deve ser [4, 5]

  print('\n=== Exercício 4: Extension em DateTime ===');
  // TODO: Teste ehFimDeSemana e formatoBR
  // DateTime(2024, 1, 13).ehFimDeSemana deve ser true (sábado)
  // DateTime(2024, 1, 15).formatoBR() deve ser '15/01/2024'

  print('\n=== Exercício 5: Extension em double ===');
  // TODO: Teste paraMoeda e arredondado
  // 1234.567.paraMoeda() deve ser 'R$ 1234,57'
  // 3.14159.arredondado deve ser 3.14

  print('\n=== Exercício 6: Extension Genérica ===');
  // TODO: Teste primeiroOuNull, ultimoOuNull e agruparPor
  // [].primeiroOuNull deve ser null
  // ['Ana', 'André', 'Bruno'].agruparPor((s) => s[0]) deve agrupar por inicial
}

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
