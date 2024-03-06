import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/customButton.widget.dart';
import 'widgets/customTextField.widget.dart';
import 'calculadora.dart';

class CalculadoraIMC extends StatefulWidget {
  @override
  State<CalculadoraIMC> createState() => _CalculadoraIMCState();
}

class _CalculadoraIMCState extends State<CalculadoraIMC> {
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();
  String? _imcMessage;

  void calcularIMC() {
    double peso = double.tryParse(pesoController.text) ?? 0.0;
    double altura = double.tryParse(alturaController.text) ?? 0.0;
    setState(() {
      _imcMessage = IMCCalculator.calcularIMC(peso, altura);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Calcule seu IMC",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              controller: pesoController,
              labelText: "Peso (kg)",
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10.0,),
            CustomTextField(
              controller: alturaController,
              labelText: "Altura (m)",
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20.0,),
            CustomButton(
              text: "Calcular",
              onPressed: calcularIMC,
            ),
            SizedBox(height: 10.0,),
            Text(
              _imcMessage ?? "",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
