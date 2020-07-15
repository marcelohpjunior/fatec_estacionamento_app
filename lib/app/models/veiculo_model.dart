class Veiculo {
  int id;
  String nome;
  String marca;
  int ano;
  String placa;
  String cor;
  String imagem;
  bool entrada;

  get Decricao => "$marca $nome $ano $cor";

  Veiculo(
      {this.id,
      this.nome,
      this.marca,
      this.ano,
      this.placa,
      this.cor,
      this.imagem,
      this.entrada});
}
