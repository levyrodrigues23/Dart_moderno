// ============================================
// EXERCÍCIOS DE COLEÇÕES (List, Set, Map)
// ============================================

// ============================================
// EXERCÍCIO 1: Operações com List
// ============================================
// Dada a lista abaixo, faça as operações pedidas:

void exercicio1() {
  var frutas = <String>['banana', 'maçã', 'laranja'];
  frutas.add("uva");
  frutas.add("morango");
  frutas.add("abacaxi");
  print(frutas.first);
  print(frutas.last);
  frutas.remove('banana');
  print(frutas);


  // 1. Adicione 'uva' à lista
  // 2. Adicione todas as frutas de ['morango', 'abacaxi'] à lista
  // 3. Imprima o primeiro e último elemento
  // 4. Remova 'banana' da lista
  // 5. Imprima a lista final
}

// ============================================
// EXERCÍCIO 2: List com where e map
// ============================================
// Dada uma lista de números, crie:
// 1. Uma nova lista apenas com os números pares
// 2. Uma nova lista com todos os números multiplicados por 2

void exercicio2() {
  final numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final listaPares = numeros.where((n) => n % 2 == 0);
  final listaMultiplicados = numeros.map((n) => n * 2);
  print(listaPares);
  print(listaMultiplicados);
}

// ============================================
// EXERCÍCIO 3: Set - Valores Únicos
// ============================================
// Use Set para remover duplicatas de uma lista

void exercicio3() {
  final listaDuplicada = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5];
  final semDuplicatas = listaDuplicada.toSet();
  print(semDuplicatas);


}

// ============================================
// EXERCÍCIO 4: Set - Operações
// ============================================
// Dados dois sets, encontre:
// 1. União (todos os elementos de ambos)
// 2. Interseção (elementos em comum)
// 3. Diferença (elementos apenas no primeiro)

void exercicio4() {
  final setA = {1, 2, 3, 4, 5};
  final setB = {4, 5, 6, 7, 8};

setA.union(setB);
setA.intersection(setB);
setA.difference(setB);
}

// ============================================
// EXERCÍCIO 5: Map Básico
// ============================================
// Crie um Map para armazenar notas de alunos
// Nome do aluno => Nota

void exercicio5() {
  final notasAlunos = <String, double>{};
  notasAlunos['levy'] = 9.5;
  notasAlunos['maria'] = 8.0;
  notasAlunos['joao'] = 7.5;
  notasAlunos['joao'] = 8.5;

  final pedroExiste = notasAlunos.containsKey("pedro");
    print("pedro existe? $pedroExiste");

notasAlunos.forEach((nome, nota){
  print("$nome, $nota");
});


  // 1. Crie um Map vazio de String para double
  // 2. Adicione: Levy = 9.5, Maria = 8.0, João = 7.5
  // 3. Atualize a nota do João para 8.5
  // 4. Verifique se 'Pedro' existe no Map
  // 5. Imprima todas as chaves e valores
}

// ============================================
// EXERCÍCIO 6: Map - Iteração
// ============================================
// Dado o Map de produtos, calcule o valor total do estoque

void exercicio6() {
  final estoque = {
    'Notebook': {'preco': 3500.0, 'quantidade': 10},
    'Mouse': {'preco': 80.0, 'quantidade': 50},
    'Teclado': {'preco': 150.0, 'quantidade': 30},
  };

  estoque.forEach((preco, quantidade){
    ;
  });

}

// ============================================
// EXERCÍCIO 7: Combinando Coleções
// ============================================
// Crie uma função que recebe uma lista de Maps (pessoas)
// e retorna um Map agrupando por idade

// Exemplo de entrada: [{'nome': 'Ana', 'idade': 20}, {'nome': 'Bob', 'idade': 20}, {'nome': 'Carlos', 'idade': 25}]
// Saída: {20: ['Ana', 'Bob'], 25: ['Carlos']}

// TODO: Crie a função agruparPorIdade

// ============================================
// EXERCÍCIO 8: fold e reduce
// ============================================
// Use fold ou reduce para:
// 1. Somar todos os números de uma lista
// 2. Encontrar o maior número
// 3. Concatenar todas as strings com vírgula

void exercicio8() {
  final numeros = [10, 25, 5, 30, 15];
  final palavras = ['Dart', 'é', 'incrível'];

  // TODO: Use fold/reduce para as operações
}

void main() {
  print('=== Exercício 1: Operações com List ===');
  exercicio1();

  print('\n=== Exercício 2: where e map ===');
  exercicio2();

  print('\n=== Exercício 3: Set - Valores Únicos ===');
  exercicio3();

  print('\n=== Exercício 4: Set - Operações ===');
  exercicio4();

  print('\n=== Exercício 5: Map Básico ===');
  exercicio5();

  print('\n=== Exercício 6: Map - Iteração ===');
  exercicio6();

  print('\n=== Exercício 7: Combinando Coleções ===');
  // TODO: Teste agruparPorIdade
  // final pessoas = [
  //   {'nome': 'Ana', 'idade': 20},
  //   {'nome': 'Bob', 'idade': 20},
  //   {'nome': 'Carlos', 'idade': 25},
  // ];
  // print(agruparPorIdade(pessoas));

  print('\n=== Exercício 8: fold e reduce ===');
  exercicio8();
}

/*
============================================
RESPOSTAS (não olhe antes de tentar!)
============================================

// Exercício 1:
frutas.add('uva');
frutas.addAll(['morango', 'abacaxi']);
print('Primeiro: ${frutas.first}, Último: ${frutas.last}');
frutas.remove('banana');
print(frutas);

// Exercício 2:
final pares = numeros.where((n) => n % 2 == 0).toList();
final dobrados = numeros.map((n) => n * 2).toList();
print('Pares: $pares');
print('Dobrados: $dobrados');

// Exercício 3:
final setUnico = listaDuplicada.toSet();
final listaSemDuplicatas = setUnico.toList();
print(listaSemDuplicatas); // [1, 2, 3, 4, 5]

// Exercício 4:
final uniao = setA.union(setB);
final intersecao = setA.intersection(setB);
final diferenca = setA.difference(setB);
print('União: $uniao');
print('Interseção: $intersecao');
print('Diferença: $diferenca');

// Exercício 5:
final notas = <String, double>{};
notas['Levy'] = 9.5;
notas['Maria'] = 8.0;
notas['João'] = 7.5;
notas['João'] = 8.5;
print('Pedro existe? ${notas.containsKey('Pedro')}');
notas.forEach((nome, nota) => print('$nome: $nota'));

// Exercício 6:
double valorTotal = 0;
estoque.forEach((produto, dados) {
  final preco = dados['preco'] as double;
  final quantidade = dados['quantidade'] as int;
  valorTotal += preco * quantidade;
});
print('Valor total do estoque: R\$ $valorTotal');

// Exercício 7:
Map<int, List<String>> agruparPorIdade(List<Map<String, dynamic>> pessoas) {
  final resultado = <int, List<String>>{};
  for (final pessoa in pessoas) {
    final idade = pessoa['idade'] as int;
    final nome = pessoa['nome'] as String;
    resultado.putIfAbsent(idade, () => []).add(nome);
  }
  return resultado;
}

// Exercício 8:
final soma = numeros.reduce((a, b) => a + b);
final maior = numeros.reduce((a, b) => a > b ? a : b);
final concatenado = palavras.reduce((a, b) => '$a, $b');
print('Soma: $soma');
print('Maior: $maior');
print('Concatenado: $concatenado');

*/
