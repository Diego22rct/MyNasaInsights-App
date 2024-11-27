import 'package:flutter/material.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    const String codigoAlumno = 'U20221A715';
    final int ultimoDigito = int.parse(codigoAlumno[codigoAlumno.length - 1]);
    final String apiUsar =
        (ultimoDigito % 2 == 0) ? 'Mars Rover Photos' : 'APOD';

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/upc-pre-202402-cc238-sw61-task-manage/Workflow-Report/refs/heads/main/images/perfiles/diego-cisneros.jpg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Nombre: Diego Rafael Cisneros Tafur',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Código de Alumno: $codigoAlumno',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'API a usar: $apiUsar',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
