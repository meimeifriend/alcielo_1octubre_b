import 'package:flutter/material.dart';

class YoConfiesoScreen extends StatelessWidget {
  const YoConfiesoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Yo Confieso')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '(Es un acto penitencial o de confesión ante Dios). Yo confieso ante Dios Todopoderoso, y ante vosotros, hermanos, que he pecado mucho de pensamiento, palabra, obra y omisión. Por mi culpa, por mi culpa, por mi gran culpa. Por eso ruego a Santa María siempre Virgen a los ángeles, a los santos, y a vosotros, hermanos, que intercedáis por mí ante Dios, Nuestro Señor. Amén.',
            style: TextStyle(
              fontSize: 20,
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