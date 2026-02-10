// ============================================
// EXERCÍCIOS DE INTERFACES E ABSTRAÇÃO
// ============================================

// ============================================
// EXERCÍCIO 1: Abstract Class
// ============================================
// Crie uma classe abstrata `RelatorioFinanceiro` com:
// - Método abstrato `String gerar()` - retorna o caminho do arquivo
// - Método concreto `void enviar(String path)` - imprime "Relatório enviado: {path}"
//
// Crie duas classes que herdam:
// - `RelatorioMensal` - gerar() retorna '/relatorio_mensal.pdf'
// - `RelatorioAnual` - gerar() retorna '/relatorio_anual.pdf'

abstract class RelatorioFinanceiro{
  String gerar();
  void enviar(String path){
    print('relatorio enviado: $path');
  }
}

class RelatorioMensal extends RelatorioFinanceiro{
  @override
  String gerar() {
    return '/relatorio_mensal.pdf';
  }

}

class RelatorioAnual extends RelatorioFinanceiro{
  @override
  String gerar() {
    return '/relatorio_anual.pdf';
  }

}

// ============================================
// EXERCÍCIO 2: Abstract Interface Class
// ============================================
// Crie uma `abstract interface class MetodoPagamento` com:
// - Método `void pagar(double valor)`
//
// Crie duas implementações:
// - `PagamentoCartao` - imprime "Pagando R$ {valor} no cartão"
// - `PagamentoPix` - imprime "Pagando R$ {valor} via Pix"
//
// Crie uma classe `ServicoCompra` que recebe um MetodoPagamento
// e tem método `finalizarCompra(double valor)` que usa o método de pagamento

abstract interface class MetodoPagamento{
  void pagar(double valor);
}

class ServicoCompra{
  final MetodoPagamento metodoPagamento;

  ServicoCompra(this.metodoPagamento);

  void finalizarCompra(final double valor){
    metodoPagamento.pagar(valor);
  }
}

class PagamentoCartao implements MetodoPagamento{
  @override
  void pagar(double valor) {
    print("pagando $valor no cartao");
  }

}

class PagameantoPix implements MetodoPagamento{
  @override
  void pagar(double valor) {
    print("pagando $valor no pix");
  }

}

// ============================================
// EXERCÍCIO 3: Interface Class
// ============================================
// `interface class` pode ser instanciada mas NÃO pode ser extendida fora do arquivo
// Ela DEVE ser implementada
//
// Crie uma `interface class Notificador` com:
// - Método `void enviar(String mensagem)` que imprime "Notificação padrão: {mensagem}"
//
// Crie `NotificadorEmail` que IMPLEMENTA Notificador:
// - Sobrescreva enviar para imprimir "Email: {mensagem}"

interface class Notificador{
  void enviar(final String mensagem){
    print("notificação enviada $mensagem");
  }
}

class NotificadorEmail implements Notificador{
  @override
  void enviar(String mensagem) {
      print("email: $mensagem");
      }

}

// ============================================
// EXERCÍCIO 4: Múltiplas Interfaces
// ============================================
// Crie duas interfaces:
// - `ProcessadorPagamento` com método `void processarPagamento(double valor)`
// - `GeradorRelatorio` com método `String gerarRelatorio()`
//
// Crie uma classe `SistemaFinanceiro` que implementa AMBAS as interfaces

interface class ProcessadorPagamento{
  void processarPagamento(final double valor){}

}

interface class GerarRelatorio{
  void gerarRelatorio(){}
}

class SistemaFinanceiro implements ProcessadorPagamento, GerarRelatorio{
  @override
  void gerarRelatorio() {

  }

  @override
  void processarPagamento(double valor) {

  }

}

// ============================================
// EXERCÍCIO 5: Polimorfismo com Interfaces
// ============================================
// Crie uma função `processarPagamentos` que recebe uma lista de MetodoPagamento
// e um valor, e executa o pagamento em cada um

void processarPagamento(List<MetodoPagamento> metodoPagamento, final double valor){
for(final metodo in metodoPagamento){
  metodo.pagar(valor);
}
}

void main() {
  print('=== Exercício 1: Abstract Class ===');
  // TODO: Crie relatórios e teste gerar() e enviar()

  print('\n=== Exercício 2: Abstract Interface Class ===');
  // TODO: Crie uma compra com cartão e uma com Pix

  print('\n=== Exercício 3: Interface Class ===');
  // TODO: Teste o Notificador e NotificadorEmail

  print('\n=== Exercício 4: Múltiplas Interfaces ===');
  // TODO: Teste o SistemaFinanceiro

  print('\n=== Exercício 5: Polimorfismo ===');
  // TODO: Teste processarPagamentos com lista de métodos diferentes
}

/*
============================================
RESPOSTAS (não olhe antes de tentar!)
============================================

// Exercício 1:
abstract class RelatorioFinanceiro {
  String gerar();

  void enviar(String path) {
    print('Relatório enviado: $path');
  }
}

class RelatorioMensal extends RelatorioFinanceiro {
  @override
  String gerar() {
    print('Gerando relatório mensal...');
    return '/relatorio_mensal.pdf';
  }
}

class RelatorioAnual extends RelatorioFinanceiro {
  @override
  String gerar() {
    print('Gerando relatório anual...');
    return '/relatorio_anual.pdf';
  }
}

// Exercício 2:
abstract interface class MetodoPagamento {
  void pagar(double valor);
}

class PagamentoCartao implements MetodoPagamento {
  @override
  void pagar(double valor) {
    print('Pagando R\$ ${valor.toStringAsFixed(2)} no cartão');
  }
}

class PagamentoPix implements MetodoPagamento {
  @override
  void pagar(double valor) {
    print('Pagando R\$ ${valor.toStringAsFixed(2)} via Pix');
  }
}

class ServicoCompra {
  final MetodoPagamento metodoPagamento;

  ServicoCompra(this.metodoPagamento);

  void finalizarCompra(double valor) {
    print('Finalizando compra...');
    metodoPagamento.pagar(valor);
    print('Compra finalizada!');
  }
}

// Exercício 3:
interface class Notificador {
  void enviar(String mensagem) {
    print('Notificação padrão: $mensagem');
  }
}

class NotificadorEmail implements Notificador {
  @override
  void enviar(String mensagem) {
    print('Email: $mensagem');
  }
}

// Exercício 4:
abstract interface class ProcessadorPagamento {
  void processarPagamento(double valor);
}

abstract interface class GeradorRelatorio {
  String gerarRelatorio();
}

class SistemaFinanceiro implements ProcessadorPagamento, GeradorRelatorio {
  double _saldoTotal = 0;

  @override
  void processarPagamento(double valor) {
    _saldoTotal += valor;
    print('Pagamento de R\$ ${valor.toStringAsFixed(2)} processado');
  }

  @override
  String gerarRelatorio() {
    return 'Saldo total: R\$ ${_saldoTotal.toStringAsFixed(2)}';
  }
}

// Exercício 5:
void processarPagamentos(List<MetodoPagamento> metodos, double valor) {
  for (final metodo in metodos) {
    metodo.pagar(valor);
  }
}

// No main:
final relatorioMensal = RelatorioMensal();
final relatorioAnual = RelatorioAnual();
final pathMensal = relatorioMensal.gerar();
relatorioMensal.enviar(pathMensal);
final pathAnual = relatorioAnual.gerar();
relatorioAnual.enviar(pathAnual);

final compraCartao = ServicoCompra(PagamentoCartao());
compraCartao.finalizarCompra(150.0);
final compraPix = ServicoCompra(PagamentoPix());
compraPix.finalizarCompra(200.0);

final notificadorPadrao = Notificador();
notificadorPadrao.enviar('Olá!');
final notificadorEmail = NotificadorEmail();
notificadorEmail.enviar('Bem-vindo!');

final sistema = SistemaFinanceiro();
sistema.processarPagamento(100);
sistema.processarPagamento(200);
print(sistema.gerarRelatorio());

processarPagamentos([PagamentoCartao(), PagamentoPix()], 50.0);

*/
