// ============================================
// EXERCÍCIOS DE NULL SAFETY E LATE
// ============================================

// ============================================
// EXERCÍCIO 1: Variáveis Nullable
// ============================================
// Crie uma função `encontrarIdade` que recebe um Map<String, int> e uma String (nome)
// Retorna int? (pode ser null se não encontrar a pessoa)

// TODO: Crie a função aqui

// ============================================
// EXERCÍCIO 2: Operador ! (Bang Operator)
// ============================================
// Dado o código abaixo, use o operador ! para acessar o valor
// Atenção: só use quando tiver CERTEZA que não é null!

void exercicio2() {
  String? nome = 'Levy';

  // TODO: Use o operador ! para chamar toUpperCase() no nome
  // e imprima o resultado
}

// ============================================
// EXERCÍCIO 3: Operador ?? (Null Coalescing)
// ============================================
// Crie uma função `obterNome` que recebe String? e retorna String
// Se for null, retorna "Anônimo"

// TODO: Crie a função aqui

// ============================================
// EXERCÍCIO 4: Operador ?. (Null Aware Access)
// ============================================
// Complete o código para acessar de forma segura

void exercicio4() {
  String? texto;

  // TODO: Imprima o tamanho do texto de forma segura (pode ser null)
  // Se for null, imprima "Texto vazio"
}

// ============================================
// EXERCÍCIO 5: Late Variables
// ============================================
// Crie uma classe `Configuracao` com:
// - Atributo late String apiUrl
// - Atributo late String apiKey
// - Método `inicializar(String url, String key)` que define os valores
// - Método `mostrarConfig()` que imprime os valores

// TODO: Crie a classe aqui

// ============================================
// EXERCÍCIO 6: Late com Inicialização Pesada
// ============================================
// Crie uma classe `BaseDeDados` com:
// - Atributo `late List<String> dados` que é inicializado com uma função pesada
// - A inicialização deve simular carregar dados: ['dado1', 'dado2', 'dado3']
// - O late garante que só carrega quando for acessado pela primeira vez

// TODO: Crie a classe aqui

// ============================================
// EXERCÍCIO 7: Null Check com if
// ============================================
// Crie uma função `processarUsuario` que recebe um Map<String, dynamic>
// O map pode ter 'nome' e 'email' (ou não)
// Imprima os dados se existirem, ou uma mensagem padrão se não

// TODO: Crie a função aqui

void main() {
  print('=== Exercício 1: Variáveis Nullable ===');
  // TODO: Teste encontrarIdade
  // final idades = {'Levy': 19, 'Maria': 25};
  // print(encontrarIdade(idades, 'Levy')); // 19
  // print(encontrarIdade(idades, 'João')); // null

  print('\n=== Exercício 2: Operador ! ===');
  exercicio2();

  print('\n=== Exercício 3: Operador ?? ===');
  // TODO: Teste obterNome
  // print(obterNome('Levy')); // Levy
  // print(obterNome(null)); // Anônimo

  print('\n=== Exercício 4: Operador ?. ===');
  exercicio4();

  print('\n=== Exercício 5: Late Variables ===');
  // TODO: Teste a classe Configuracao

  print('\n=== Exercício 6: Late com Inicialização Pesada ===');
  // TODO: Teste a classe BaseDeDados

  print('\n=== Exercício 7: Null Check ===');
  // TODO: Teste processarUsuario
  // processarUsuario({'nome': 'Levy', 'email': 'levy@email.com'});
  // processarUsuario({'nome': 'João'});
  // processarUsuario({});
}

/*
============================================
RESPOSTAS (não olhe antes de tentar!)
============================================

// Exercício 1:
int? encontrarIdade(Map<String, int> pessoas, String nome) {
  return pessoas[nome];
}

// Exercício 2:
print(nome!.toUpperCase()); // LEVY

// Exercício 3:
String obterNome(String? nome) {
  return nome ?? 'Anônimo';
}

// Exercício 4:
print(texto?.length ?? 'Texto vazio');

// Exercício 5:
class Configuracao {
  late String apiUrl;
  late String apiKey;

  void inicializar(String url, String key) {
    apiUrl = url;
    apiKey = key;
  }

  void mostrarConfig() {
    print('URL: $apiUrl');
    print('Key: $apiKey');
  }
}

// Exercício 6:
class BaseDeDados {
  late List<String> dados = _carregarDados();

  List<String> _carregarDados() {
    print('Carregando dados...');
    return ['dado1', 'dado2', 'dado3'];
  }
}

// Exercício 7:
void processarUsuario(Map<String, dynamic> usuario) {
  final nome = usuario['nome'];
  final email = usuario['email'];

  if (nome != null) {
    print('Nome: $nome');
  } else {
    print('Nome não informado');
  }

  if (email != null) {
    print('Email: $email');
  } else {
    print('Email não informado');
  }
}

// No main:
final idades = {'Levy': 19, 'Maria': 25};
print(encontrarIdade(idades, 'Levy'));
print(encontrarIdade(idades, 'João'));

print(obterNome('Levy'));
print(obterNome(null));

final config = Configuracao();
config.inicializar('https://api.exemplo.com', 'ABC123');
config.mostrarConfig();

final db = BaseDeDados();
print('Ainda não acessou dados');
print(db.dados); // Só aqui carrega!

processarUsuario({'nome': 'Levy', 'email': 'levy@email.com'});
processarUsuario({'nome': 'João'});
processarUsuario({});

*/
