import 'package:flutter/material.dart';

class CredoScreen extends StatelessWidget {
  const CredoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Credo')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Creo en Dios Padre todopoderoso, Creador del cielo y de la tierra. Creo en Jesucristo, su único Hijo, nuestro Señor; que fue concebido por obra y gracia del Espíritu Santo, nació de Santa María Virgen; padeció bajo el poder de Poncio Pilato, fue crucificado, muerto y sepultado; descendió a los infiernos, al tercer día resucitó de entre los muertos; subió a los cielos y está sentado a la diestra de Dios, Padre todopoderoso. Desde allí ha de venir a juzgar a los vivos y a los muertos. Creo en el Espíritu Santo; la Santa Iglesia Católica, la Comunión de los Santos; el perdón de los pecados, la resurrección de la carne; y la vida eterna. Amén.',
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