// como eu poosso retornar um recorde nomeado?

({String nome, int idade}) pessoaNomeado(){
  return (nome: "levy", idade:  19);
}



void main(){
  final p = pessoaNomeado();


//! evite records triviais
  final unico = ("unico",);

//! evitar criar recordes com muitos campos
  final grande = (1,3,343,4,3,53,5,3,146,16,1,6,16,1,61);

  //! prefira records nomeados!!

 /* final valores = (name: "jose levy", data = DateTime.friday);

  */
// tbm se torna valido não misturar records nomeados com records posicionais, pois não é interessante e é totalmente estranho ter parametros misturados

}
