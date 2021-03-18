import 'package:flutter/material.dart';
import 'package:proj_pizzaria/screen/sobre_screen.dart';

import 'cardapio_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(45),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 90, 0, 40),
                child: Image.asset(
                  'images/Pizza-Hut-Logo-1.png',
                  width: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: ElevatedButton(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Cardápio',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CardapioScreen(),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sobre',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SobreScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
