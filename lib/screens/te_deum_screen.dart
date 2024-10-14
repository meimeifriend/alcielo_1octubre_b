import 'package:flutter/material.dart';

class TeDeumScreen extends StatelessWidget {
  const TeDeumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Te Deum')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'A Ti, oh Dios, te alabamos, a Ti, Señor, te reconocemos. A Ti, eterno Padre, te venera toda la creación. Los ángeles todos, los cielos y todas las potestades te honran. Los querubines y serafines te cantan sin cesar: Santo, Santo, Santo es el Señor, Dios del universo. Los cielos y la tierra están llenos de la majestad de tu gloria. A Ti te ensalza el glorioso coro de los apóstoles, la multitud admirable de los profetas, el blanco ejército de los mártires. A Ti la Iglesia santa, extendida por toda la tierra, te aclama: Padre de inmensa majestad, Hijo único y verdadero, digno de adoración, Espíritu Santo, Defensor. Tú eres el Rey de la gloria, Cristo. Tú eres el Hijo único del Padre. Tú, para liberar al hombre, aceptaste la condición humana sin desdeñar el seno de la Virgen. Tú, rotas las cadenas de la muerte, abriste a los creyentes el Reino de los Cielos. Tú sentado a la derecha de Dios en la gloria del Padre. Creemos que un día has de venir como juez. Te rogamos, pues, que vengas en ayuda de tus siervos, a quienes redimiste con tu preciosa sangre. Haz que en la Gloria eterna nos asociemos a tus santos. Salva a tu pueblo, Señor, y bendice tu heredad. Sé su pastor y ensálzalo eternamente. Día tras día te bendecimos y alabamos tu nombre para siempre, por eternidad de eternidades. Dígnate, Señor, en este día guardarnos del pecado. Ten piedad de nosotros, Señor, ten piedad de nosotros. Que tu misericordia, Señor, venga sobre nosotros, como lo esperamos de Ti. En Ti, Señor, confié, no me veré defraudado para siempre.',
            style: TextStyle(
              fontSize: 15,
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