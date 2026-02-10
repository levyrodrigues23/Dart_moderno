// ============================================
// 🏆 DESAFIO FINAL - Combinando Tudo!
// ============================================
//
// Neste desafio você vai criar um mini sistema de e-commerce
// usando TODOS os conceitos: Classes, Mixins, Extensions e Records
//
// ============================================

// ============================================
// PARTE 1: Extensions
// ============================================
// Crie as seguintes extensions:
//
// 1. Extension em double para formatar preço: `formatarPreco()` -> "R$ XX,XX"
// 2. Extension em String: `limpar()` que remove espaços extras

// TODO: Crie as extensions

// ============================================
// PARTE 2: Mixins
// ============================================
// Crie os seguintes mixins:
//
// 1. Mixin `Desconto` com método `aplicarDesconto(double porcentagem)`
//    que retorna o preço com desconto
// 2. Mixin `Avaliavel` com propriedade `avaliacoes` (List<int>)
//    e getter `mediaAvaliacoes`

// TODO: Crie os mixins

// ============================================
// PARTE 3: Classes
// ============================================
// Crie as seguintes classes:
//
// 1. Classe abstrata `ItemLoja` com: nome, preco, descricao
// 2. Classe `ProdutoFisico` que herda de ItemLoja e usa os mixins Desconto e Avaliavel
//    - Adicione atributo `peso` (double)
// 3. Classe `ProdutoDigital` que herda de ItemLoja e usa os mixins Desconto e Avaliavel
//    - Adicione atributo `tamanhoMB` (int)

// TODO: Crie as classes

// ============================================
// PARTE 4: Records
// ============================================
// Crie as seguintes funções que retornam records:
//
// 1. `resumoProduto(ItemLoja item)` que retorna um record nomeado com:
//    - nome, precoFormatado, tipo (físico ou digital)
//
// 2. `calcularFrete(ProdutoFisico produto, String cep)` que retorna record:
//    - (valor do frete baseado no peso, prazo em dias)
//    - Frete = peso * 2.5, prazo = 5 dias

// TODO: Crie as funções

// ============================================
// PARTE 5: Carrinho de Compras
// ============================================
// Crie uma classe `Carrinho` com:
// - Lista de ItemLoja
// - Método `adicionarItem(ItemLoja item)`
// - Método `removerItem(String nome)`
// - Getter `totalItens`
// - Getter `valorTotal`
// - Método `finalizarCompra()` que retorna um record com:
//   (itens: int, total: double, resumo: String)

// TODO: Crie a classe Carrinho

void main() {
  print('🛒 === SISTEMA DE E-COMMERCE ===\n');

  // TODO: Teste seu sistema!
  //
  // 1. Crie alguns produtos (físicos e digitais)
  // 2. Adicione avaliações aos produtos
  // 3. Aplique descontos
  // 4. Adicione produtos ao carrinho
  // 5. Exiba o resumo da compra usando records
}

/*
============================================
RESPOSTAS (não olhe antes de tentar!)
============================================

// PARTE 1: Extensions
extension PrecoExtension on double {
  String formatarPreco() => 'R\$ ${toStringAsFixed(2).replaceAll('.', ',')}';
}

extension StringLimpa on String {
  String limpar() => trim().replaceAll(RegExp(r'\s+'), ' ');
}

// PARTE 2: Mixins
mixin Desconto {
  double get preco;

  double aplicarDesconto(double porcentagem) {
    return preco * (1 - porcentagem / 100);
  }
}

mixin Avaliavel {
  List<int> avaliacoes = [];

  void adicionarAvaliacao(int nota) {
    if (nota >= 1 && nota <= 5) {
      avaliacoes.add(nota);
    }
  }

  double get mediaAvaliacoes {
    if (avaliacoes.isEmpty) return 0;
    return avaliacoes.reduce((a, b) => a + b) / avaliacoes.length;
  }
}

// PARTE 3: Classes
abstract class ItemLoja {
  String nome;
  double preco;
  String descricao;

  ItemLoja(this.nome, this.preco, this.descricao);
}

class ProdutoFisico extends ItemLoja with Desconto, Avaliavel {
  double peso;

  ProdutoFisico(super.nome, super.preco, super.descricao, this.peso);
}

class ProdutoDigital extends ItemLoja with Desconto, Avaliavel {
  int tamanhoMB;

  ProdutoDigital(super.nome, super.preco, super.descricao, this.tamanhoMB);
}

// PARTE 4: Records
({String nome, String precoFormatado, String tipo}) resumoProduto(ItemLoja item) {
  final tipo = item is ProdutoFisico ? 'Físico' : 'Digital';
  return (
    nome: item.nome,
    precoFormatado: item.preco.formatarPreco(),
    tipo: tipo,
  );
}

(double frete, int prazo) calcularFrete(ProdutoFisico produto, String cep) {
  return (produto.peso * 2.5, 5);
}

// PARTE 5: Carrinho
class Carrinho {
  final List<ItemLoja> _itens = [];

  void adicionarItem(ItemLoja item) {
    _itens.add(item);
  }

  void removerItem(String nome) {
    _itens.removeWhere((item) => item.nome == nome);
  }

  int get totalItens => _itens.length;

  double get valorTotal => _itens.fold(0, (acc, item) => acc + item.preco);

  ({int itens, double total, String resumo}) finalizarCompra() {
    final nomes = _itens.map((e) => e.nome).join(', ');
    return (
      itens: totalItens,
      total: valorTotal,
      resumo: 'Produtos: $nomes | Total: ${valorTotal.formatarPreco()}',
    );
  }
}

// No main:
void main() {
  print('🛒 === SISTEMA DE E-COMMERCE ===\n');

  // Criando produtos
  final notebook = ProdutoFisico('Notebook Gamer', 4500.0, 'Notebook potente para jogos', 2.5);
  final ebook = ProdutoDigital('Curso de Dart', 97.0, 'Aprenda Dart do zero', 500);

  // Adicionando avaliações
  notebook.adicionarAvaliacao(5);
  notebook.adicionarAvaliacao(4);
  notebook.adicionarAvaliacao(5);

  ebook.adicionarAvaliacao(5);
  ebook.adicionarAvaliacao(5);

  // Exibindo informações
  print('📦 ${notebook.nome}');
  print('   Preço: ${notebook.preco.formatarPreco()}');
  print('   Com 10% desconto: ${notebook.aplicarDesconto(10).formatarPreco()}');
  print('   Média: ${notebook.mediaAvaliacoes} ⭐');

  final (frete, prazo) = calcularFrete(notebook, '01234-567');
  print('   Frete: ${frete.formatarPreco()} (${prazo} dias)');

  print('');

  final resumoEbook = resumoProduto(ebook);
  print('💾 ${resumoEbook.nome}');
  print('   Preço: ${resumoEbook.precoFormatado}');
  print('   Tipo: ${resumoEbook.tipo}');
  print('   Média: ${ebook.mediaAvaliacoes} ⭐');

  print('');

  // Carrinho
  final carrinho = Carrinho();
  carrinho.adicionarItem(notebook);
  carrinho.adicionarItem(ebook);

  print('🛒 Carrinho:');
  print('   Itens: ${carrinho.totalItens}');
  print('   Valor total: ${carrinho.valorTotal.formatarPreco()}');

  final compra = carrinho.finalizarCompra();
  print('\n✅ Compra finalizada!');
  print('   ${compra.resumo}');
}

*/
