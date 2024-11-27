import 'package:flutter/material.dart';
import 'package:my_nasa_insights/planetary/presentation/favorites_apod.dart';
import 'package:my_nasa_insights/planetary/presentation/show_apod.dart';
import 'package:my_nasa_insights/shared/widgets/home_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = const [ShowApod(), HomeInfo(), FavoritesApod()];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My NASA Insights'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.slideshow), label: 'Mostrar'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favoritos'),
        ],
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
      ),
      body: SafeArea(child: _pages[_index]),
    );
  }
}
