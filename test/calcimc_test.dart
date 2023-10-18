import 'package:test/test.dart';

import '../bin/pessoa.dart';

void main() {
  group('IMC Calculation', () {
    test('Calculates IMC correctly', () {
      Pessoa pessoa = Pessoa('Teste', 70.0, 1.75);
      expect(pessoa.calcularIMC(), closeTo(22.86, 0.01));
    });

    test('Throws exception for negative weight and height', () {
      expect(
          () => Pessoa('Teste', -70.0, -1.75).calcularIMC(), throwsException);
    });
  });
}
