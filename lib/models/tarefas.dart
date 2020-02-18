class Tarefa {
  int id;
  String descricao;
  bool pronto;

  Tarefa({this.id, this.descricao, this.pronto});

  Tarefa.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descricao = json['descricao'];
    pronto = json['pronto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['descricao'] = this.descricao;
    data['pronto'] = this.pronto;
    return data;
  }
}