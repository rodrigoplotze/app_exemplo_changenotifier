import 'package:flutter/material.dart';

class GorjetaController extends ChangeNotifier {
  final double  _valorConta = 0.0;
  final double _percentualGorjeta = 10.0;
  final double _valorGorjeta = 0.0;
  final double _totalPagar = 0.0;

    List<double> listaGorjetas = [10.0, 15.0, 20.0, 25.0, 30.0];

  double get valorConta => _valorConta;
  double get percentualGorjeta => _percentualGorjeta;
  String get valorGorjeta => _valorGorjeta.toStringAsFixed(2);
  String get totalPagar => _totalPagar.toStringAsFixed(2);

  void atualizarValorConta(double novoValor) {
  }

  void atualizarPercentualGorjeta(double novoPercentual) {
  }

  void calcularGorjeta() {
  }
}
