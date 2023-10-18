// ignore: unused_import
import 'package:calcimc/calcimc.dart' as calcimc;

import 'dart:io';

import 'pessoa.dart';

void main() {
  try {
    print('Digite o nome da pessoa:');
    String nome = stdin.readLineSync() ?? '';

    print('Digite o peso (em kg):');
    double peso = double.parse(stdin.readLineSync() ?? '0');

    print('Digite a altura (em metros):');
    double altura = double.parse(stdin.readLineSync() ?? '0');

    Pessoa pessoa = Pessoa(nome, peso, altura);

    double imc = pessoa.calcularIMC();
    print('O IMC de $nome é: $imc');
  } catch (e) {
    print('Ocorreu um erro: $e');
  }
}
