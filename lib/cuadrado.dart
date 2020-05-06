import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Cuadrado extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CuadradoForm();
  }
}

class CuadradoForm extends State<Cuadrado>{
  TextEditingController ladoController = TextEditingController();
  double area;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Área del cuadrado'),
      ),
      body: Center(
        child: Card(
          elevation: 20,

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset("images/cuadrado.png",width: 200, height: 200,),
              CupertinoTextField(
                controller: ladoController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                textAlign: TextAlign.center,
                placeholder: "Lado del cuadrado",
              ),
              Text(''),
              CupertinoButton(
                color: Colors.lightBlue,
                child: Text('Calcular'),
                onPressed: (){
                  double lado = double.parse(ladoController.text);
                  area = lado * lado;
                  return showDialog(
                    context: context,
                    builder: (context){
                      return CupertinoAlertDialog(
                        title: Text('Área del Cuadrado'),
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
          )
        ),
      ),
    );
  }
}