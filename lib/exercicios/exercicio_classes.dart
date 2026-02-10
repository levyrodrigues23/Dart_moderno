// ============================================
// EXERCÍCIOS DE CLASSES
// ============================================

// ============================================
// EXERCÍCIO 1: Classe Básica
// ============================================
// Crie uma classe `Pessoa` com:
// - Atributos: nome (String), idade (int)
// - Construtor que recebe nome e idade
// - Método `apresentar()` que imprime "Olá, meu nome é {nome} e tenho {idade} anos"

// TODO: Crie a classe Pessoa aqui

// ============================================
// EXERCÍCIO 2: Encapsulamento (Atributos Privados)
// ============================================
// Crie uma classe `ContaBancaria` com:
// - Atributo privado: _saldo (double), inicializa com 0
// - Getter para saldo
// - Método `depositar(double valor)` - adiciona ao saldo se valor > 0
// - Método `sacar(double valor)` - subtrai do saldo se valor <= saldo, retorna bool

// TODO: Crie a classe ContaBancaria aqui

// ============================================
// EXERCÍCIO 3: Construtor Nomeado
// ============================================
// Crie uma classe `Retangulo` com:
// - Atributos: largura (double), altura (double)
// - Construtor padrão que recebe largura e altura
// - Construtor nomeado `Retangulo.quadrado(double lado)` que cria um quadrado
// - Método `area()` que retorna a área

// TODO: Crie a classe Retangulo aqui

// ============================================
// EXERCÍCIO 4: Herança
// ============================================
// Crie uma classe `Animal` com:
// - Atributo: nome (String)
// - Método `emitirSom()` que imprime "Som genérico"
//
// Crie uma classe `Cachorro` que herda de Animal:
// - Sobrescreva `emitirSom()` para imprimir "Au au!"
// - Adicione método `abanarRabo()` que imprime "{nome} está abanando o rabo"
//
// Crie uma classe `Gato` que herda de Animal:
// - Sobrescreva `emitirSom()` para imprimir "Miau!"

// TODO: Crie as classes aqui

// ============================================
// EXERCÍCIO 5: Classe Abstrata
// ============================================
// Crie uma classe abstrata `FormaGeometrica` com:
// - Método abstrato `double calcularArea()`
// - Método abstrato `double calcularPerimetro()`
//
// Crie uma classe `Circulo` que implementa FormaGeometrica:
// - Atributo: raio (double)
// - Implemente os métodos (use 3.14159 para PI)

// TODO: Crie as classes aqui

// ============================================
// EXERCÍCIO 6: Factory Constructor
// ============================================
// Crie uma classe `Usuario` com:
// - Atributos: nome, email
// - Factory constructor `Usuario.fromJson(Map<String, dynamic> json)`
//   que cria um Usuario a partir de um Map

// TODO: Crie a classe Usuario aqui

void main() {
  print('=== Exercício 1: Classe Básica ===');
  // TODO: Crie uma Pessoa e chame apresentar()

  print('\n=== Exercício 2: Encapsulamento ===');
  // TODO: Crie uma ContaBancaria, deposite 100, saque 30, imprima saldo

  print('\n=== Exercício 3: Construtor Nomeado ===');
  // TODO: Crie um Retangulo normal e um quadrado, imprima as áreas

  print('\n=== Exercício 4: Herança ===');
  // TODO: Crie um Cachorro e um Gato, chame seus métodos

  print('\n=== Exercício 5: Classe Abstrata ===');
  // TODO: Crie um Circulo com raio 5, imprima área e perímetro

  print('\n=== Exercício 6: Factory Constructor ===');
  // TODO: Crie um Usuario usando fromJson com {'nome': 'João', 'email': 'joao@email.com'}
}

/*
============================================
RESPOSTAS (não olhe antes de tentar!)
============================================

// Exercício 1:
class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void apresentar() {
    print('Olá, meu nome é $nome e tenho $idade anos');
  }
}

// Exercício 2:
class ContaBancaria {
  double _saldo = 0;

  double get saldo => _saldo;

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
    }
  }

  bool sacar(double valor) {
    if (valor <= _saldo) {
      _saldo -= valor;
      return true;
    }
    return false;
  }
}

// Exercício 3:
class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  Retangulo.quadrado(double lado) : largura = lado, altura = lado;

  double area() => largura * altura;
}

// Exercício 4:
class Animal {
  String nome;
  Animal(this.nome);

  void emitirSom() {
    print('Som genérico');
  }
}

class Cachorro extends Animal {
  Cachorro(super.nome);

  @override
  void emitirSom() {
    print('Au au!');
  }

  void abanarRabo() {
    print('$nome está abanando o rabo');
  }
}

class Gato extends Animal {
  Gato(super.nome);

  @override
  void emitirSom() {
    print('Miau!');
  }
}

// Exercício 5:
abstract class FormaGeometrica {
  double calcularArea();
  double calcularPerimetro();
}

class Circulo extends FormaGeometrica {
  double raio;

  Circulo(this.raio);

  @override
  double calcularArea() => 3.14159 * raio * raio;

  @override
  double calcularPerimetro() => 2 * 3.14159 * raio;
}

// Exercício 6:
class Usuario {
  String nome;
  String email;

  Usuario(this.nome, this.email);

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(json['nome'], json['email']);
  }
}

// No main:
final pessoa = Pessoa('Levy', 19);
pessoa.apresentar();

final conta = ContaBancaria();
conta.depositar(100);
conta.sacar(30);
print('Saldo: ${conta.saldo}');

final ret = Retangulo(10, 5);
final quad = Retangulo.quadrado(4);
print('Área retângulo: ${ret.area()}');
print('Área quadrado: ${quad.area()}');

final cachorro = Cachorro('Rex');
cachorro.emitirSom();
cachorro.abanarRabo();
final gato = Gato('Mimi');
gato.emitirSom();

final circulo = Circulo(5);
print('Área: ${circulo.calcularArea()}');
print('Perímetro: ${circulo.calcularPerimetro()}');

final user = Usuario.fromJson({'nome': 'João', 'email': 'joao@email.com'});
print('${user.nome} - ${user.email}');

*/
