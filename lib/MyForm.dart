import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget{

  @override
  _MyFormState createState() {
   return _MyFormState();
  }
}

class _MyFormState extends State<MyForm>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MiniProjetoFlutter',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      home: Scaffold (
        appBar : AppBar(
          title: Text("Inserir novo Incidente"),
        ),
        body: (
        Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                hintText: "Titulo",
                labelText: "Titulo do Incidente",
                labelStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black
                )

            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Titulo Obrigatório';
              }else if(value.length > 25){
                return 'Titulo ultrapassou os 25 caracteres';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Descrição",
                labelText: "Descrição do Incidente",
                labelStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black
                )

            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Descrição Obrigatória';
              }else if(value.length < 100){
                return 'Total caracteres ${value.length} MIN: 100';
                //return 'Descrição inferior a 100 caracteres';
              }else if(value.length > 200){
                return 'Descrição ultrapassou os 200 caracteres';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Rua Israel Adesanya",
                labelText: "Morada (Opcional)",
                labelStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black
                )

            ),
            validator: (value) {
              if(value.length > 0){
                if(value.length < 60){
                  return 'Morada ultrapassou os 60 caracteres';
                }
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  /*ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));*/
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    )

      )
      )
      );

  }
}

class MyFormTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MiniProjetoFlutter',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Inserir novo Incidente"),
          ),
        body: /*Padding*/(
          //padding: const EdgeInsets.all(8.0),
        Form(
          //key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Titulo",
                    labelText: "Titulo do Incidente",
                    labelStyle: TextStyle(
                      fontSize: 24,
                      color: Colors.black
                    )

                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Titulo Obrigatório';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Descrição",
                    labelText: "Descrição do Incidente",
                    labelStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black
                    )

                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(
               padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    /*
                    // Validate returns true if the form is valid, or false
                    // otherwise.
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, display a Snackbar.
                      ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                    }*/

                },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        )
        ),
        )
    );
  }
}