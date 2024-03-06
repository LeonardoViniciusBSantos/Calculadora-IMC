class IMCCalculator {
  static String calcularIMC(double peso, double altura) {
    double imc = peso / (altura * altura);
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc >= 18.5 && imc < 24.9) {
      return 'Peso ideal';
    } else if (imc >= 25 && imc < 99.9) {
      return 'Acima do peso';
    } else {
      return 'Inválido';
    }
  }
}
