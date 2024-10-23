import 'package:flutter/material.dart';

class SobreMiScreen extends StatelessWidget {
  const SobreMiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sobre mí')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Aquí se agrega la imagen
            Image.asset(
              'assets/maria_zuccarelli_foto.jpeg', // Asegúrate de que la ruta sea correcta
              height: 200, // Ajusta el tamaño según sea necesario
              width: 200,
            ),
            const SizedBox(height: 16.0), // Espaciado entre la imagen y el texto
            const Text(
              'Mi nombre es María Nazarena Zuccarelli. Soy una psicóloga de La Plata admiradora de la vida de Carlo Acutis y en su uso de la tecnología a favor de la fe. Desde hace algunos años me vengo especializando en temas de tecnología y comunicación digital. Quise que mi primer aplicación sea en honor a Carlo Acutis puesto que su vida y obra me parecen maravillosas. Espero aportar un granito de arena para que se conozca al Benerable Carlo Acutis y contenido religioso en general.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}