class Aluno {
  int ra;
  String senha;

  Aluno({this.ra, this.senha});

  Aluno.fromJson(Map<String, dynamic> json) {
    ra = json['ra'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ra'] = this.ra;
    data['senha'] = this.senha;
    return data;
  }
}
