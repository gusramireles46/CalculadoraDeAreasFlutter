import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Triangulo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TrianguloForm();
  }
}

class TrianguloForm extends State<Triangulo> {
  TextEditingController baseController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  var area;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Área del Triángulo'),
      ),
      body: Center(
        child: Card(
           elevation: 25,

          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: <Widget>[
              Image.asset("images/triangulo.png", width: 200, height: 200,),
              CupertinoTextField(
                placeholder: 'Longitud de la base',
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                textAlign: TextAlign.center,
                controller: baseController,
              ),
              Text('\n'),
              CupertinoTextField(
                placeholder: 'Longitud de la altura',
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                textAlign: TextAlign.center,
                controller: alturaController,
              ),
              Text('\n'),
              CupertinoButton(
                child: Text('Calcular'),
                color: Colors.lightBlue,
                onPressed: (){
                  var base = double.parse(baseController.text);
                  var altura = double.parse(alturaController.text);
                  area = (base * altura)/2;
                  return showDialog(
                    context: context,
                    builder: (context){
                      return CupertinoAlertDialog(
                        title: Text('Área del Triángulo'),
                        content: Text('El área del triángulo es: $area u²'),
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
              Text('\n'),
            ],
          ),
        ),
      ),
    );
  }
}