// ============================================
// EXERCÍCIOS DE OPERADORES IS/AS E CALLABLE CLASS
// ============================================

// ============================================
// EXERCÍCIO 1: Operador is (Type Check)
// ============================================
// Dada a hierarquia de classes abaixo, crie uma função `identificarAnimal`
// que recebe um Animal e imprime o tipo específico usando `is`

class Animal {
  void fazerSom() {
    print('Som genérico');
  }
}

class Cachorro extends Animal {
  @override
  void fazerSom() {
    print('Au au!');
  }

  void buscarBola() {
    print('Buscando a bola...');
  }
}

class Gato extends Animal {
  @override
  void fazerSom() {
    print('Miau!');
  }

  void arranhar() {
    print('Arranhando...');
  }
}

// TODO: Crie a função identificarAnimal que usa `is` para verificar o tipo

// ============================================
// EXERCÍCIO 2: Operador as (Type Cast)
// ============================================
// Crie uma função `executarAcaoEspecifica` que recebe um Animal
// Se for Cachorro, faz buscarBola()
// Se for Gato, faz arranhar()
// Use `is` para verificar e `as` para fazer o cast (ou smart cast)

// TODO: Crie a função aqui

// ============================================
// EXERCÍCIO 3: is com ! (Negação)
// ============================================
// Crie uma função que filtra uma lista de Animals
// retornando apenas os que NÃO são Cachorros

// TODO: Crie a função filtrarNaoCachorros

// ============================================
// EXERCÍCIO 4: Callable Class Básica
// ============================================
// Crie uma classe `Multiplicador` que:
// - Tem um atributo `fator` (int)
// - Implementa o método `call(int valor)` que retorna valor * fator
//
// Assim você pode usar: multiplicador(5) ao invés de multiplicador.call(5)

// TODO: Crie a classe Multiplicador

// ============================================
// EXERCÍCIO 5: Callable Class com Sistema de Notificação
// ============================================
// Crie uma classe `Notificacao` que:
// - Tem atributo `remetente` (String)
// - Implementa `call(String destinatario, String tipo)` que:
//   - Se tipo == 'email', imprime "Email de {remetente} para {destinatario}"
//   - Se tipo == 'sms', imprime "SMS de {remetente} para {destinatario}"
//   - Se tipo == 'push', imprime "Push de {remetente} para {destinatario}"

// TODO: Crie a classe Notificacao

// ============================================
// EXERCÍCIO 6: Callable Class como Validador
// ============================================
// Crie uma classe `Validador` que:
// - Implementa `bool call(String valor)` como método abstrato
//
// Crie implementações:
// - `ValidadorEmail` - retorna true se contém '@' e '.'
// - `ValidadorCPF` - retorna true se tem 11 dígitos
// - `ValidadorSenha` - retorna true se tem pelo menos 8 caracteres

// TODO: Crie as classes

// ============================================
// EXERCÍCIO 7: Combinando is/as com Callable
// ============================================
// Crie uma função `processarValidadores` que:
// - Recebe uma lista de Validadores e um valor
// - Usa `is` para identificar o tipo de validador
// - Imprime qual validação passou ou falhou

// TODO: Crie a função aqui

void main() {
  print('=== Exercício 1: Operador is ===');
  // TODO: Teste identificarAnimal
  // final animais = [Cachorro(), Gato(), Animal()];
  // for (final animal in animais) {
  //   identificarAnimal(animal);
  // }

  print('\n=== Exercício 2: Operador as ===');
  // TODO: Teste executarAcaoEspecifica
  // executarAcaoEspecifica(Cachorro());
  // executarAcaoEspecifica(Gato());

  print('\n=== Exercício 3: is com ! ===');
  // TODO: Teste filtrarNaoCachorros
  // final animais = [Cachorro(), Gato(), Cachorro(), Gato()];
  // final semCachorros = filtrarNaoCachorros(animais);

  print('\n=== Exercício 4: Callable Class Básica ===');
  // TODO: Teste Multiplicador
  // final dobrar = Multiplicador(2);
  // print(dobrar(5)); // 10
  // print(dobrar(10)); // 20

  print('\n=== Exercício 5: Sistema de Notificação ===');
  // TODO: Teste Notificacao
  // final notificador = Notificacao('Sistema');
  // notificador('João', 'email');
  // notificador('Maria', 'sms');

  print('\n=== Exercício 6: Validadores ===');
  // TODO: Teste os validadores
  // final validadorEmail = ValidadorEmail();
  // print(validadorEmail('teste@email.com')); // true
  // print(validadorEmail('invalido')); // false

  print('\n=== Exercício 7: Processando Validadores ===');
  // TODO: Teste processarValidadores
}

/*
============================================
RESPOSTAS (não olhe antes de tentar!)
============================================

// Exercício 1:
void identificarAnimal(Animal animal) {
  if (animal is Cachorro) {
    print('É um Cachorro!');
  } else if (animal is Gato) {
    print('É um Gato!');
  } else {
    print('É um Animal genérico');
  }
}

// Exercício 2:
void executarAcaoEspecifica(Animal animal) {
  if (animal is Cachorro) {
    // Smart cast - Dart já sabe que é Cachorro aqui
    animal.buscarBola();
  } else if (animal is Gato) {
    animal.arranhar();
  } else {
    animal.fazerSom();
  }

  // Forma alternativa com as:
  // if (animal is Cachorro) {
  //   (animal as Cachorro).buscarBola();
  // }
}

// Exercício 3:
List<Animal> filtrarNaoCachorros(List<Animal> animais) {
  return animais.where((animal) => animal is! Cachorro).toList();
}

// Exercício 4:
class Multiplicador {
  final int fator;

  Multiplicador(this.fator);

  int call(int valor) {
    return valor * fator;
  }
}

// Exercício 5:
class Notificacao {
  final String remetente;

  Notificacao(this.remetente);

  void call(String destinatario, String tipo) {
    final tipoFormatado = switch (tipo.toLowerCase()) {
      'email' => 'Email',
      'sms' => 'SMS',
      'push' => 'Push',
      _ => 'Notificação',
    };
    print('$tipoFormatado de $remetente para $destinatario');
  }
}

// Exercício 6:
abstract class Validador {
  bool call(String valor);
}

class ValidadorEmail extends Validador {
  @override
  bool call(String valor) {
    return valor.contains('@') && valor.contains('.');
  }
}

class ValidadorCPF extends Validador {
  @override
  bool call(String valor) {
    final apenasDigitos = valor.replaceAll(RegExp(r'\D'), '');
    return apenasDigitos.length == 11;
  }
}

class ValidadorSenha extends Validador {
  @override
  bool call(String valor) {
    return valor.length >= 8;
  }
}

// Exercício 7:
void processarValidadores(List<Validador> validadores, String valor) {
  for (final validador in validadores) {
    final tipo = switch (validador) {
      ValidadorEmail() => 'Email',
      ValidadorCPF() => 'CPF',
      ValidadorSenha() => 'Senha',
      _ => 'Desconhecido',
    };

    final resultado = validador(valor) ? 'VÁLIDO' : 'INVÁLIDO';
    print('$tipo: $resultado');
  }
}

// No main:
final animais = [Cachorro(), Gato(), Animal()];
for (final animal in animais) {
  identificarAnimal(animal);
}

executarAcaoEspecifica(Cachorro());
executarAcaoEspecifica(Gato());

final lista = [Cachorro(), Gato(), Cachorro(), Gato()];
print('Sem cachorros: ${filtrarNaoCachorros(lista).length} animais');

final dobrar = Multiplicador(2);
print(dobrar(5));
print(dobrar(10));

final triplicar = Multiplicador(3);
print(triplicar(7));

final notificador = Notificacao('Sistema');
notificador('João', 'email');
notificador('Maria', 'sms');
notificador('Pedro', 'push');

final validadorEmail = ValidadorEmail();
final validadorCPF = ValidadorCPF();
final validadorSenha = ValidadorSenha();

print(validadorEmail('teste@email.com'));
print(validadorCPF('12345678901'));
print(validadorSenha('senha123'));

processarValidadores(
  [ValidadorEmail(), ValidadorCPF(), ValidadorSenha()],
  'teste@email.com',
);

*/
