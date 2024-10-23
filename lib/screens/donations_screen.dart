import 'package:flutter/material.dart';

class DonationsScreen extends StatefulWidget {
  @override
  _DonationsScreenState createState() => _DonationsScreenState();
}

class _DonationsScreenState extends State<DonationsScreen> {
  final _formKey = GlobalKey<FormState>();
  String? nombre;
  String? cantidad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulario de Donaciones')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Alinear al inicio
            children: [
              // Se ha removido la imagen
              SizedBox(height: 20), // Espacio después de la imagen (ahora eliminado)
              TextFormField(
                decoration: InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa tu nombre';
                  }
                  return null;
                },
                onSaved: (value) {
                  nombre = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Cantidad a donar'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa la cantidad';
                  }
                  return null;
                },
                onSaved: (value) {
                  cantidad = value;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Donación de \$ $cantidad recibida de $nombre')),
                    );
                  }
                },
                child: Text('Donar'),
              ),
              SizedBox(height: 30), // Espacio antes del texto
              Text(
                'Si quiere realizar una transferencia para ayudar a seguir desarrollando este tipo de aplicaciones, puede hacerlo con los siguientes datos:',
                style: TextStyle(fontSize: 20), // Estilo del texto
              ),
              SizedBox(height: 10), // Espacio adicional
              Text(
                'Nombre: MARIA NAZAR',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 10), // Espacio adicional
              Text(
                'Apellido: ZUCCARELLI',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 10), // Espacio adicional
              Text(
                'Alias: GUINDA.AMOR.CABRA',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 10), // Espacio adicional
              Text(
                'CBU: 0290012410000038788207',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 10), // Espacio adicional
              Text(
                'Caja de ahorro: 000000120203878820',
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}