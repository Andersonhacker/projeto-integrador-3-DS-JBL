// aqui vao as configuração para salvar localmente os dados
// utilizei o site
// https://javiercbk.github.io/json_to_dart/ para criar um JSON
//(JavaScript Object Notation) é um formato de arquivo para troca de dados que é suportado pela linguagem Dart.

class User {
  String? name;
  String? email;
  String? password;
  String? cpf;
  String? tipoconta;
  String? cidade;
  bool? keepon;

  User(
      {this.name,
      this.email,
      this.password,
      this.cpf,
      this.tipoconta,
      this.cidade,
      this.keepon});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    cpf = json['cpf'];
    tipoconta = json['tipoconta'];
    cidade = json['cidade'];
    keepon = json['keepon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['cpf'] = this.cpf;
    data['tipoconta'] = this.tipoconta;
    data['cidade'] = this.cidade;
    data['keepon'] = this.keepon;
    return data;
  }

  String toString() {
    return "Name: ${this.name}\nEmail: ${this.email} \nSenha: ${this.password} \nCpf: ${this.cpf} \nTipoconta: ${this.tipoconta} \nCidade: ${this.cidade}";
  }
}
