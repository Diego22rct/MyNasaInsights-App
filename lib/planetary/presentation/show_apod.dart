import 'package:flutter/material.dart';

class ShowApod extends StatefulWidget {
  const ShowApod({super.key});

  @override
  State<ShowApod> createState() => _ShowApodState();
}

class _ShowApodState extends State<ShowApod> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Mostrar Favoritos'),
      ),
    );
  }
}
