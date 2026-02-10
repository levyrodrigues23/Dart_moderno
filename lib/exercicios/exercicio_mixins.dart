// ============================================
// EXERCÍCIOS DE MIXINS
// ============================================

// Mixins permitem reutilizar código em múltiplas classes
// sem usar herança tradicional!

// ============================================
// EXERCÍCIO 1: Mixin Básico
// ============================================
// Crie um mixin `Nadador` com método `nadar()` que imprime "Estou nadando!"
// Crie um mixin `Voador` com método `voar()` que imprime "Estou voando!"
// Crie uma classe `Pato` que usa AMBOS os mixins

// TODO: Crie os mixins e a classe aqui

// ============================================
// EXERCÍCIO 2: Mixin com Propriedades
// ============================================
// Crie um mixin `Identificavel` que tem:
// - Uma propriedade abstrata `String get id`
// - Um método `mostrarId()` que imprime "ID: {id}"
//
// Crie uma classe `Produto` com nome e que implementa o mixin
// (o id pode ser gerado como 'PROD-{nome}')

// TODO: Crie o mixin e a classe aqui

// ============================================
// EXERCÍCIO 3: Mixin com Restrição (on)
// ============================================
// Crie uma classe `Veiculo` com atributo `velocidadeMaxima` (int)
// Crie um mixin `Turbo` que só pode ser usado em Veiculo (use 'on')
// - Método `ativarTurbo()` que imprime a velocidade com turbo (velocidadeMaxima * 1.5)
//
// Crie uma classe `CarroEsportivo` que herda de Veiculo e usa o mixin Turbo

// TODO: Crie as classes e o mixin aqui

// ============================================
// EXERCÍCIO 4: Múltiplos Mixins com Método Igual
// ============================================
// Crie um mixin `LoggerA` com método `log()` que imprime "Logger A"
// Crie um mixin `LoggerB` com método `log()` que imprime "Logger B"
// Crie uma classe `Sistema` que usa ambos os mixins
//
// Qual log será chamado? O último mixin aplicado vence!

// TODO: Crie os mixins e a classe aqui

// ============================================
// EXERCÍCIO 5: Mixin Prático - Sistema de Habilidades
// ============================================
// Crie um sistema de RPG onde personagens podem ter diferentes habilidades:
//
// Mixin `Atacante`: método `atacar()` que imprime "{nome} atacou causando 10 de dano!"
// Mixin `Curandeiro`: método `curar()` que imprime "{nome} curou 15 de vida!"
// Mixin `Defensor`: método `defender()` que imprime "{nome} está defendendo!"
//
// Classe abstrata `Personagem` com atributo `nome`
// Classe `Guerreiro` que herda de Personagem e usa Atacante e Defensor
// Classe `Mago` que herda de Personagem e usa Atacante e Curandeiro
// Classe `Paladino` que herda de Personagem e usa TODOS os 3 mixins

// TODO: Crie o sistema aqui

void main() {
  print('=== Exercício 1: Mixin Básico ===');
  // TODO: Crie um Pato e chame nadar() e voar()

  print('\n=== Exercício 2: Mixin com Propriedades ===');
  // TODO: Crie um Produto e chame mostrarId()

  print('\n=== Exercício 3: Mixin com Restrição ===');
  // TODO: Crie um CarroEsportivo e ative o turbo

  print('\n=== Exercício 4: Múltiplos Mixins ===');
  // TODO: Crie um Sistema e chame log() - observe qual é chamado

  print('\n=== Exercício 5: Sistema de RPG ===');
  // TODO: Crie um Guerreiro, Mago e Paladino e teste suas habilidades
}

/*
============================================
RESPOSTAS (não olhe antes de tentar!)
============================================

// Exercício 1:
mixin Nadador {
  void nadar() {
    print('Estou nadando!');
  }
}

mixin Voador {
  void voar() {
    print('Estou voando!');
  }
}

class Pato with Nadador, Voador {}

// Exercício 2:
mixin Identificavel {
  String get id;

  void mostrarId() {
    print('ID: $id');
  }
}

class Produto with Identificavel {
  String nome;

  Produto(this.nome);

  @override
  String get id => 'PROD-$nome';
}

// Exercício 3:
class Veiculo {
  int velocidadeMaxima;
  Veiculo(this.velocidadeMaxima);
}

mixin Turbo on Veiculo {
  void ativarTurbo() {
    print('Velocidade com turbo: ${velocidadeMaxima * 1.5}');
  }
}

class CarroEsportivo extends Veiculo with Turbo {
  CarroEsportivo(super.velocidadeMaxima);
}

// Exercício 4:
mixin LoggerA {
  void log() {
    print('Logger A');
  }
}

mixin LoggerB {
  void log() {
    print('Logger B');
  }
}

class Sistema with LoggerA, LoggerB {}
// Quando chamar log(), vai imprimir "Logger B" (o último vence)

// Exercício 5:
abstract class Personagem {
  String nome;
  Personagem(this.nome);
}

mixin Atacante on Personagem {
  void atacar() {
    print('$nome atacou causando 10 de dano!');
  }
}

mixin Curandeiro on Personagem {
  void curar() {
    print('$nome curou 15 de vida!');
  }
}

mixin Defensor on Personagem {
  void defender() {
    print('$nome está defendendo!');
  }
}

class Guerreiro extends Personagem with Atacante, Defensor {
  Guerreiro(super.nome);
}

class Mago extends Personagem with Atacante, Curandeiro {
  Mago(super.nome);
}

class Paladino extends Personagem with Atacante, Curandeiro, Defensor {
  Paladino(super.nome);
}

// No main:
final pato = Pato();
pato.nadar();
pato.voar();

final produto = Produto('Notebook');
produto.mostrarId();

final carro = CarroEsportivo(200);
carro.ativarTurbo();

final sistema = Sistema();
sistema.log(); // Imprime "Logger B"

final guerreiro = Guerreiro('Conan');
guerreiro.atacar();
guerreiro.defender();

final mago = Mago('Gandalf');
mago.atacar();
mago.curar();

final paladino = Paladino('Arthur');
paladino.atacar();
paladino.curar();
paladino.defender();

*/
