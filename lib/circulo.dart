import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Circulo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CirculoForm();
  }
}

class CirculoForm extends State<Circulo>{
  TextEditingController radioController = TextEditingController();
  var area;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Área del Círculo'),
      ),
      body: Center(
        child: Card(
          elevation: 25,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset("images/circulo.png", width: 200, height: 200,),
              CupertinoTextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                placeholder: 'Longitud del radio',
                controller: radioController,
              ),
              Text('\n'),
              CupertinoButton(
                child: Text('Calcular'),
                color: Colors.lightBlue,
                onPressed: (){
                  var radio = double.parse(radioController.text);
                  final double pi = 3.1416;
                  area = pi*(radio*radio);
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text('Área del Círculo'),
                        content: Text('El área del cuadrado es: $area u²'),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text('Aceptar'),
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                          ),
                        ],
                      );
                    }
                  );
                },
              ),
            ],

          ),
        ),
      ),
    );
  }
}