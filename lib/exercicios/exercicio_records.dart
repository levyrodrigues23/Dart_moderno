// ============================================
// EXERCÍCIOS DE RECORDS - Dart 3+
// ============================================

// ============================================
// EXERCÍCIO 1: Record Posicional Básico
// ============================================
// Crie uma função chamada `obterPonto` que retorna um record posicional
// com dois valores double (x e y). Retorne os valores (5.0, 10.0)

(double, double) obterPonto(){
return (5.0,10.0);
}


// ============================================
// EXERCÍCIO 2: Record Nomeado
// ============================================
// Crie uma função chamada `criarProduto` que retorna um record NOMEADO
// com os campos: nome (String), preco (double), emEstoque (bool)
// Retorne um produto de exemplo

({String nome, double preco, bool emEstoque, String? mensagem}) criarProduto(){
 final bool emEstoque = false;

 if(!emEstoque){

    return (nome: 'julia', preco: 23, emEstoque: false, mensagem: "este ser não está a venda");

 }
     return (nome: 'julia', preco: 23, emEstoque: true, mensagem: null);

}






// ============================================
// EXERCÍCIO 3: Destructuring de Record Posicional
// ============================================
// Dado o record abaixo, faça o destructuring para extrair os valores
// em variáveis separadas e imprima cada uma

void exercicio3() {
  final coordenadas = (42.5, -23.1, 100.0);

coordenadas.$1;
coordenadas.$2;
coordenadas.$3;
}

// ============================================
// EXERCÍCIO 4: Destructuring de Record Nomeado
// ============================================
// Dado o record nomeado abaixo, faça o destructuring
// extraindo os valores para variáveis

void exercicio4() {
  final aluno = (nome: 'Maria Silva', nota: 9.5, aprovado: true);

 aluno.nome;
 aluno.nota;
 aluno.aprovado;
}

// ============================================
// EXERCÍCIO 5: Função que retorna múltiplos valores
// ============================================
// Crie uma função `calcularEstatisticas` que recebe uma lista de números
// e retorna um record NOMEADO com: soma, media, quantidade

({int soma, double media, int quantidade}) calcularEstatisticas(List<int> numeros){
  final soma = numeros.fold(0, (a, b)=> a + b);
  final quantidade = numeros.length;
  final media = soma / quantidade;

  return (media: media, soma: soma, quantidade: quantidade);



}

// ============================================
// EXERCÍCIO 6: Comparando Records
// ============================================
// Records são iguais se seus valores são iguais.
// Complete o código para verificar se dois records são iguais

void exercicio6() {
  final pessoa1 = (nome: 'João', idade: 25);
  final pessoa2 = (nome: 'João', idade: 25);
  final pessoa3 = (nome: 'Maria', idade: 30);

  // TODO: Compare pessoa1 com pessoa2 e pessoa1 com pessoa3
  if(pessoa1 == pessoa2){
    print("essas pessoas são iguais");
  } else{
    print("não é igual");
  }

   if(pessoa1 == pessoa3){
    print("essas pessoas são iguais");
  } else{
    print("não é igual");
  }
}
void main(){
  print(obterPonto());
  print(criarProduto());
  exercicio6();
}


/*
============================================
RESPOSTAS (não olhe antes de tentar!)
============================================

// Exercício 1:
(double, double) obterPonto() {
  return (5.0, 10.0);
}

// Exercício 2:
({String nome, double preco, bool emEstoque}) criarProduto() {
  return (nome: 'Notebook', preco: 2500.0, emEstoque: true);
}

// Exercício 3:
final (x, y, z) = coordenadas;
print('X: $x, Y: $y, Z: $z');

// Exercício 4:
final (:nome, :nota, :aprovado) = aluno;
print('Nome: $nome, Nota: $nota, Aprovado: $aprovado');

// Exercício 5:
({double soma, double media, int quantidade}) calcularEstatisticas(List<num> numeros) {
  final soma = numeros.reduce((a, b) => a + b).toDouble();
  final quantidade = numeros.length;
  final media = soma / quantidade;
  return (soma: soma, media: media, quantidade: quantidade);
}

// Exercício 6:
print('pessoa1 == pessoa2: ${pessoa1 == pessoa2}'); // true
print('pessoa1 == pessoa3: ${pessoa1 == pessoa3}'); // false

*/
