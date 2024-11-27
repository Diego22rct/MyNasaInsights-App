import 'package:flutter/material.dart';

class FavoritesApod extends StatefulWidget {
  const FavoritesApod({super.key});

  @override
  State<FavoritesApod> createState() => _FavoritesApodState();
}

class _FavoritesApodState extends State<FavoritesApod> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Mostrar APOD'),
      ),
    );
  }
}
