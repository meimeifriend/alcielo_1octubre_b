import 'package:flutter/material.dart';

class SalveReinaScreen extends StatelessWidget {
  const SalveReinaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Salve, Reina')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Dios te salve, Reina y Madre de Misericordia, vida, dulzura y esperanza nuestra, Dios te salve. A ti Llamamos los desterrados hijos de Eva. A ti suspiramos gimiendo y llorando en este valle de lágrimas. Ea, pues, Señora, abogada nuestra, vuelve a nosotros esos tus ojos misericordiosos; y después de este destierro muéstranos a Jesús, fruto bendito de tu vientre. Oh clemente, oh piadosa, oh dulce Virgen María. Ruega por nosotros, Santa Madre de Dios. Para que seamos dignos de alcanzar las promesas de Cristo. Amén.',
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