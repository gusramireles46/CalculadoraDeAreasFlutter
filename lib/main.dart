import 'package:calculoareas/circulo.dart';
import 'package:calculoareas/cuadrado.dart';
import 'package:calculoareas/rectangulo.dart';
import 'package:calculoareas/triangulo.dart';
import 'package:flutter/cupertino.dart';
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
                  Image.asset("images/areas.jpg",),
                ]
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Ramírez Mireles Gustavo', style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 16),),
                accountEmail: Text('18031000@itcelaya.edu.mx', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/18031000.JPG"),
                ),
              ),
              ListTile(
                title: Text('Cuadrado'),
                leading: Icon(Icons.stop),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Cuadrado()));
                },
              ),
              ListTile(
                title: Text('Rectángulo'),
                leading: Icon(Icons.crop_16_9),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Rectangulo()));
                },
              ),
              ListTile(
                title: Text('Triángulo'),
                leading: Icon(Icons.change_history),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Triangulo()));
                },
              ),
              ListTile(
                title: Text('Círculo'),
                leading: Icon(Icons.brightness_1),
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
