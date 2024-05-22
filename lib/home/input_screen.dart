import 'package:calculadora_imc/home/widgets/customButton.widget.dart';
import 'package:calculadora_imc/home/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'result_screen.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              CustomTextField(
                controller: heightController,
                label: 'Altura (cm)',
              ),
              SizedBox(height: 16),
              CustomTextField(
                controller: weightController,
                label: 'Peso (kg)',
              ),
              SizedBox(height: 32),
              CustomButton(
                  text: 'Calcular IMC',
                  onTap: () {
                    double height = double.parse(heightController.text) / 100;
                    double weight = double.parse(weightController.text);
                    double imc = weight / (height * height);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(imc: imc),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
