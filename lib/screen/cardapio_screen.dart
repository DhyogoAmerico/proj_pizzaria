import 'package:flutter/material.dart';

class CardapioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 231, 61),
      appBar: AppBar(
        title: Text('Cardápio'),
        backgroundColor: Color.fromARGB(255, 255, 6, 1),
        /*actions: [
          IconButton(
            icon: const Icon(Icons.list_outlined),
            iconSize: 35,
            padding: EdgeInsets.only(right: 18),
            onPressed: () {
              showMyDialog(context);
            },
          ),
        ],*/
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(8),
        children: [
          _buildGridCardapio(context, 'Moda da Casa', 'pizza1.jpg',
              'Mussarela, calabresa, alho, cheddar e azeitonas.', '32,00'),
          _buildGridCardapio(context, 'Marguerita', 'pizza2.jpg',
              'Mussarela, tomate e majericão frescos.', '35,00'),
          _buildGridCardapio(context, 'Lombo com cheddar', 'pizza3.jpg',
              'Mussarela, lombinho defumado e cheddar.', '32,00'),
          _buildGridCardapio(context, 'Catuperu', 'pizza4.jpg',
              'Mussarela, peito de peru defumado e requeijão.', '40,00'),
          _buildGridCardapio(context, 'Fantástica', 'pizza5.png',
              'Mussarela, calabresa, palmito e azeitona.', '36,00'),
        ],
      ),
    );
  }
}

ExpansionTile _buildExpansionCardapio(
    String nome, String img, String descricao, String valor) {
  return ExpansionTile(
    title: Text(
      "$nome",
      style: TextStyle(fontSize: 20),
    ),
    children: [
      ListTile(
        title: Column(
          children: [
            Image.asset(
              'images/$img',
              width: 300,
            ),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                "$descricao",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Text(
                'Valor: $valor',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Container _buildGridCardapio(BuildContext context, String nome, String img,
    String descricao, String valor) {
  return Container(
    child: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Image.asset(
              'images/$img',
              width: 160,
            ),
          ),
          Container(
            child: TextButton(
              child: Text(
                '$nome',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                showDialogGrid(context, nome, img, descricao, valor);
              },
            ),
          ),
        ],
      ),
      color: Colors.amber,
    ),
  );
}

Future<void> showDialogGrid(BuildContext context, String nome, String img,
    String descricao, String valor) async {
  return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          titlePadding: EdgeInsets.only(top: 20, bottom: 15),
          title: Text(
            '$nome',
            textAlign: TextAlign.center,
          ),
          children: [
            Column(
              children: [
                Image.asset(
                  'images/$img',
                  width: 250,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(8, 20, 8, 10),
                  child: Text(
                    '$descricao',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.monetization_on,
                            size: 25,
                            color: Colors.red[600],
                          ),
                          Text(
                            "$valor",
                            style: TextStyle(
                                color: Colors.red[600],
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Tam. M',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      });
}

//IMPLEMENTAÇÃO DE DOIS MODOS DE MOSTRAR

Future<void> showMyDialog(BuildContext context) async {
  return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Mostrar'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                radioButton(),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}

// ignore: camel_case_types
class radioButton extends StatefulWidget {
  @override
  _RadioButton createState() => _RadioButton();
}

class _RadioButton extends State<radioButton> {
  int _radioValue = 1;

  Widget result;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
      switch (_radioValue) {
        case 1:
          return ListView(
            children: [
              _buildExpansionCardapio('Moda da Casa', 'pizza1.jpg',
                  'Mussarela, calabresa, alho, cheddar e azeitonas.', '32,00'),
              _buildExpansionCardapio('Marguerita', 'pizza2.jpg',
                  'Mussarela, tomate e majericão frescos.', '35,00'),
              _buildExpansionCardapio('Lombo com cheddar', 'pizza3.jpg',
                  'Mussarela, lombinho defumado e cheddar.', '32,00'),
              _buildExpansionCardapio('Catuperu', 'pizza4.jpg',
                  'Mussarela, peito de peru defumado e requeijão.', '40,00'),
              _buildExpansionCardapio('Fantástica', 'pizza5.png',
                  'Mussarela, calabresa, palmito e azeitona.', '36,00'),
            ],
          );
          break;
        case 2:
          return result = GridView.count(
            crossAxisCount: 2,
            children: [
              /*_buildGridCardapio('Moda da Casa', 'pizza1.jpg',
                  'Mussarela, calabresa, alho, cheddar e azeitonas.', '32,00'),
              _buildGridCardapio('Marguerita', 'pizza2.jpg',
                  'Mussarela, tomate e majericão frescos.', '35,00'),
              _buildGridCardapio('Lombo com cheddar', 'pizza3.jpg',
                  'Mussarela, lombinho defumado e cheddar.', '32,00'),
              _buildGridCardapio('Catuperu', 'pizza4.jpg',
                  'Mussarela, peito de peru defumado e requeijão.', '40,00'),
              _buildGridCardapio('Fantástica', 'pizza5.png',
                  'Mussarela, calabresa, palmito e azeitona.', '36,00'),*/
            ],
          );
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RadioListTile(
            value: 1,
            groupValue: _radioValue,
            title: Text('Modo Lista'),
            onChanged: (value) {
              _handleRadioValueChange(value);
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: _radioValue,
            title: Text('Modo Grid'),
            onChanged: (value) {
              _handleRadioValueChange(value);
            },
          ),
        ],
      ),
    );
  }
}
