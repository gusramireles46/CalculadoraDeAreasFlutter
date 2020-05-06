import 'package:calculoareas/circulo.dart';
import 'package:calculoareas/cuadrado.dart';
import 'package:calculoareas/rectangulo.dart';
import 'package:calculoareas/triangulo.dart';
import 'package:flutter/material.dart';

void main() => runApp(CalculoAreas());

class CalculoAreas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuLateral(),
    );
  }
}

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cálculo de áreas'),
        ),
        body: Center(
          child: Card(
            elevation: 10,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset("images/areas.jpg", width: 500, height: 250,)
                ]
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('ISC. Ramírez Mireles Gustavo'),
                accountEmail: Text('gusramireles46@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/meliodas.png"),
                ),
              ),
              ListTile(
                title: Text('Cuadrado'),
                leading: Icon(Icons.crop_square),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Cuadrado()));
                },
              ),
              ListTile(
                title: Text('Rectángulo'),
                leading: Icon(Icons.crop_square),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Rectangulo()));
                },
              ),
              ListTile(
                title: Text('Triángulo'),
                leading: Icon(Icons.crop_square),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Triangulo()));
                },
              ),
              ListTile(
                title: Text('Círculo'),
                leading: Icon(Icons.crop_square),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Circulo()));
                },
              ),
            ],
          ),
        ),
    );
  }
}
