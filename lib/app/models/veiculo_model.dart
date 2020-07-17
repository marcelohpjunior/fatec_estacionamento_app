class VeiculoModel {
  int id;
  String nome;
  String marca;
  int ano;
  String placa;
  String cor;
  String imagem;
  bool entrada;

  get Decricao => "$marca $nome $ano $cor";

  VeiculoModel(
      {this.id,
      this.nome,
      this.marca,
      this.ano,
      this.placa,
      this.cor,
      this.imagem,
      this.entrada});

  VeiculoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    marca = json['marca'];
    ano = json['ano'];
    placa = json['placa'];
    cor = json['cor'];
    imagem = json['imagem'];
    entrada = json['entrada'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['marca'] = this.marca;
    data['ano'] = this.ano;
    data['placa'] = this.placa;
    data['cor'] = this.cor;
    data['imagem'] = this.imagem;
    data['entrada'] = this.entrada;
    return data;
  }
}
