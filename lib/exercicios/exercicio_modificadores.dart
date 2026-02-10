// ============================================
// EXERCÍCIOS DE MODIFICADORES DE CLASSE (base, final, sealed)
// ============================================

// ============================================
// CONCEITOS:
// - `base`: Classe pode ser estendida, mas não implementada fora da library
// - `final`: Classe NÃO pode ser estendida nem implementada fora da library
// - `sealed`: Classe não pode ser estendida/implementada fora do arquivo,
//             permite pattern matching exaustivo
// ============================================

// ============================================
// EXERCÍCIO 1: Base Class
// ============================================
// Crie uma `base class Veiculo` com:
// - Atributos: marca, modelo
// - Método `ligar()` que imprime "Veículo ligado"
//
// Crie `base class Carro extends Veiculo`
// - Adicione método `abrirPorta()`

// TODO: Crie as classes aqui

// ============================================
// EXERCÍCIO 2: Final Class
// ============================================
// Crie uma `final class Configuracao` que:
// - Tem atributos: apiUrl, timeout
// - Não pode ser herdada nem implementada (é o comportamento do final)
//
// Isso é útil para classes utilitárias ou que não devem ser modificadas

// TODO: Crie a classe aqui

// ============================================
// EXERCÍCIO 3: Sealed Class para Estado
// ============================================
// Crie uma sealed class `Estado` para representar estados de uma requisição:
// - `Carregando` - sem atributos
// - `Sucesso` - tem atributo `dados` (String)
// - `Erro` - tem atributo `mensagem` (String)
//
// Crie uma função que recebe um Estado e imprime mensagem apropriada
// usando pattern matching (switch)

// TODO: Crie as classes aqui

// ============================================
// EXERCÍCIO 4: Sealed Class para Resultado
// ============================================
// Crie uma sealed class genérica `Resultado<T>`:
// - `Ok<T>` - tem atributo `valor` do tipo T
// - `Falha<T>` - tem atributo `erro` (String)
//
// Crie uma função `dividir(int a, int b)` que retorna Resultado<double>
// Se b == 0, retorna Falha, senão retorna Ok com o resultado

// TODO: Crie as classes e função

// ============================================
// EXERCÍCIO 5: Pattern Matching com Sealed
// ============================================
// Usando a sealed class Estado do exercício 3,
// crie uma função que retorna um widget simulado (String) baseado no estado:
// - Carregando -> "CircularProgressIndicator"
// - Sucesso -> "Text: {dados}"
// - Erro -> "SnackBar: {mensagem}"

// TODO: Crie a função construirWidget

void main() {
  print('=== Exercício 1: Base Class ===');
  // TODO: Crie um Carro e teste os métodos

  print('\n=== Exercício 2: Final Class ===');
  // TODO: Crie uma Configuracao
  // Tente o erro: criar uma classe que herda de Configuracao (não deve compilar)

  print('\n=== Exercício 3: Sealed Class Estado ===');
  // TODO: Teste com diferentes estados
  // final estados = [Carregando(), Sucesso('Dados carregados'), Erro('Falha na conexão')];

  print('\n=== Exercício 4: Sealed Class Resultado ===');
  // TODO: Teste dividir
  // print(dividir(10, 2));
  // print(dividir(10, 0));

  print('\n=== Exercício 5: Pattern Matching ===');
  // TODO: Teste construirWidget
  // print(construirWidget(Carregando()));
  // print(construirWidget(Sucesso('Olá!')));
  // print(construirWidget(Erro('Ops!')));
}

/*
============================================
RESPOSTAS (não olhe antes de tentar!)
============================================

// Exercício 1:
base class Veiculo {
  final String marca;
  final String modelo;

  Veiculo(this.marca, this.modelo);

  void ligar() {
    print('Veículo $marca $modelo ligado');
  }
}

base class Carro extends Veiculo {
  Carro(super.marca, super.modelo);

  void abrirPorta() {
    print('Porta do $marca $modelo aberta');
  }
}

// Exercício 2:
final class Configuracao {
  final String apiUrl;
  final int timeout;

  Configuracao({required this.apiUrl, required this.timeout});
}

// Erro! final class não pode ser herdada:
// class MinhaConfig extends Configuracao {} // ERRO!

// Exercício 3:
sealed class Estado {}

class Carregando extends Estado {}

class Sucesso extends Estado {
  final String dados;
  Sucesso(this.dados);
}

class Erro extends Estado {
  final String mensagem;
  Erro(this.mensagem);
}

void processarEstado(Estado estado) {
  switch (estado) {
    case Carregando():
      print('Carregando...');
    case Sucesso(:final dados):
      print('Sucesso: $dados');
    case Erro(:final mensagem):
      print('Erro: $mensagem');
  }
}

// Exercício 4:
sealed class Resultado<T> {}

class Ok<T> extends Resultado<T> {
  final T valor;
  Ok(this.valor);
}

class Falha<T> extends Resultado<T> {
  final String erro;
  Falha(this.erro);
}

Resultado<double> dividir(int a, int b) {
  if (b == 0) {
    return Falha('Divisão por zero!');
  }
  return Ok(a / b);
}

// Exercício 5:
String construirWidget(Estado estado) {
  return switch (estado) {
    Carregando() => 'CircularProgressIndicator',
    Sucesso(:final dados) => 'Text: $dados',
    Erro(:final mensagem) => 'SnackBar: $mensagem',
  };
}

// No main:
final carro = Carro('Toyota', 'Corolla');
carro.ligar();
carro.abrirPorta();

final config = Configuracao(apiUrl: 'https://api.exemplo.com', timeout: 30);
print('API: ${config.apiUrl}, Timeout: ${config.timeout}s');

final estados = [Carregando(), Sucesso('Dados carregados'), Erro('Falha na conexão')];
for (final estado in estados) {
  processarEstado(estado);
}

final resultado1 = dividir(10, 2);
final resultado2 = dividir(10, 0);

switch (resultado1) {
  case Ok(:final valor):
    print('Resultado: $valor');
  case Falha(:final erro):
    print('Erro: $erro');
}

switch (resultado2) {
  case Ok(:final valor):
    print('Resultado: $valor');
  case Falha(:final erro):
    print('Erro: $erro');
}

print(construirWidget(Carregando()));
print(construirWidget(Sucesso('Olá!')));
print(construirWidget(Erro('Ops!')));

*/
