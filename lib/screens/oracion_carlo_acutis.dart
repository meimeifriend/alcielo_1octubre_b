import 'package:flutter/material.dart';

class OracionCarloAcutis extends StatelessWidget {
  const OracionCarloAcutis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Oración a Carlo Acutis')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Oh Dios, nuestro Padre, gracias por habernos dado a Carlo, modelo de vida para los jóvenes y mensaje de amor para todos. Tú has hecho que se enamore de tu hijo, Jesús, haciendo de la Eucaristía su autopista hacia el cielo. Tú le has dado a María como Madre muy amada, y has hecho que con el Rosario se convirtiese en un cantor de su ternura. Acoge su intercesión por nosotros. Mira sobre todo a los pobres, a quienes él amó y ayudó. También concédeme la gracia que necesito. Y haz que nuestra alegría sea plena, conduciendo a Carlo entre los santos de la Iglesia Universal, a fin de que su sonrisa siga resplandeciendo para nosotros y para gloria de tu nombre. Amén.',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}