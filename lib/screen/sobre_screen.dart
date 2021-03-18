import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SobreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 231, 61),
      appBar: AppBar(
        title: Text('Sobre nós'),
        backgroundColor: Color.fromARGB(255, 255, 6, 1),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: Image.asset(
              'images/pizzaria.jpg',
              width: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur finibus magna vitae ultricies ultricies. Sed vel lacinia risus. Sed sit amet lacinia massa. Nullam ac convallis massa. Fusce a turpis id nulla lobortis eleifend nec ac ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;',
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(50, 25, 50, 0),
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.red[600],
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.phone,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    '(35) 9 9999-9999',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(50, 25, 50, 0),
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.red[600],
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.alternate_email_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'email@email.com',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
