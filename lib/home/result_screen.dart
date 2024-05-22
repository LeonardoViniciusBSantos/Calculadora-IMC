import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double imc;

  ResultScreen({required this.imc});

  String getImcCategory(double imc) {
    if (imc < 16.0) {
      return 'Muito abaixo do peso';
    } else if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc < 24.9) {
      return 'Peso normal';
    } else if (imc < 29.9) {
      return 'Acima do peso';
    } else {
      return 'Muito acima do peso';
    }
  }

  IconData getIcon(double imc) {
    if (imc < 16.0) {
      return Icons.sentiment_very_dissatisfied;
    } else if (imc < 18.5) {
      return Icons.sentiment_dissatisfied;
    } else if (imc < 24.9) {
      return Icons.sentiment_satisfied_outlined;
    } else if (imc < 29.9) {
      return Icons.sentiment_dissatisfied;
    } else {
      return Icons.sentiment_very_dissatisfied;
    }
  }

  Color getColor(double imc) {
    if (imc < 16.0) {
      return Colors.red;
    } else if (imc < 18.5) {
      return Colors.yellow;
    } else if (imc < 24.9) {
      return Colors.green;
    } else if (imc < 29.9) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    String category = getImcCategory(imc);

    return Scaffold(
      appBar: AppBar(title: Text('Resultado do IMC')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              getIcon(imc),
              size: 100,
              color: getColor(imc),
            ),
            SizedBox(height: 16),
            Text(
              'Seu IMC é: ${imc.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              category,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
