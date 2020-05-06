import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Rectangulo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RectanguloForm();
  }
}

class RectanguloForm extends State<Rectangulo>{
  TextEditingController altoController = TextEditingController();
  TextEditingController baseController = TextEditingController();
  double area;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Área del Rectángulo'),
      ),
      body: Center(
        child: Card(
          elevation: 25,

          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: <Widget>[
              Image.asset("images/rectangulo.png", width: 200, height: 200),
              CupertinoTextField(
                controller: baseController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                placeholder: 'Longitud de la base',
                textAlign: TextAlign.center,
              ),
              Text('\n'),
              CupertinoTextField(
                controller: altoController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                placeholder: 'Longitud de lado',
                textAlign: TextAlign.center,
              ),
              CupertinoButton(
                color: Colors.lightBlue,
                child: Text('Calcular'),
                onPressed: (){
                  var base = double.parse(baseController.text);
                  var alto = double.parse(altoController.text);
                  area = base * alto;
                  return showDialog(
                    context: context,
                    builder: (context){
                      return CupertinoAlertDialog(
                        title: Text('Área del Rectángulo'),
                        content: Text('El área del rectángulo es $area u²'),
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