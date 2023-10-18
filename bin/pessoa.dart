class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    if (peso <= 0 || altura <= 0) {
      throw Exception('Peso e altura devem ser valores positivos.');
    }

    return peso / (altura * altura);
  }
}
