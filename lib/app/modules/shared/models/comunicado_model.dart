class ComunicadoModel {
  String imagem;
  String titulo;
  String texto;

  ComunicadoModel({this.imagem, this.titulo, this.texto});

  ComunicadoModel.fromJson(Map<String, dynamic> json) {
    imagem = json['imagem'];
    titulo = json['titulo'];
    texto = json['texto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imagem'] = this.imagem;
    data['titulo'] = this.titulo;
    data['texto'] = this.texto;
    return data;
  }
}
