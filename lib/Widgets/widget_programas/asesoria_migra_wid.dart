import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:url_launcher/url_launcher.dart';

class Asesoria extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('no sre ejecuta el comando $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Asesoría Migratoria'),
        ),
        body: new Padding(
          padding: EdgeInsets.all(0.0),
          child: Container(
            color: Colors.red,
          ),
        ));
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: 'Nombre Completo:',
              ),
              validator: (String value) {
                return value.contains('@') ? 'Do not use the @ char.' : null;
              },
              //5keyboardType: ,
            ),
            new TextField(
              decoration: const InputDecoration(
                icon: Icon(Icons.pin_drop),
                labelText: 'Dirección:',
              ),
            ),
            new TextField(
              decoration: const InputDecoration(
                icon: Icon(Icons.phone),
                labelText: 'Teléfono:',
              ),
            ),
            new TextField(
              decoration: const InputDecoration(
                icon: Icon(Icons.mail),
                labelText: 'Correo Electronico:',
              ),
            ),
            new TextField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: 'Tipo de Asesoría:',
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    // Si el formulario es válido, queremos mostrar un Snackbar
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Enviando Consulta'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Consulta Enviada'),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 1),
                    ));
                  }
                },
                child: Text('Envíar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
