import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Lista de Componentes"),
      ),
      body: ListView(
        children: [
          ListaComponente('Resistor', 'images/resistor.png'),
          ListaComponente('Capacitor', 'images/capacitor.jpg'),
          ListaComponente('Diodo', 'images/diodo.png'),
          ListaComponente('Transistor', 'images/transistor.png')
        ],
      ),
    ),
  ));
}

class ListaComponente extends StatelessWidget {
  final String componente, imgc;

  ListaComponente(this.componente, this.imgc, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          Container(
            color: Colors.orangeAccent,
            width: 400,
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.blueGrey,
                width: 100,
                height: 120,
                child: Image.asset(
                  imgc,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                componente,
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Nome do componente $componente");
                  },
                  child: Text("Exibir"))
            ],
          )
        ],
      ),
      Container(
        color: Colors.blueAccent,
        width: 400,
        height: 20,
      )
    ]);
  }
}
