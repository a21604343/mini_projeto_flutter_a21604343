import 'package:flutter/material.dart';
import 'package:mini_projeto_flutter_a21604343/MyForm.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiniProjetoFlutter',
      theme: ThemeData(

        primarySwatch: Colors.green,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IncidentesPage(title: 'Incidentes'),


    );
  }
}

class IncidentesPage extends StatefulWidget {
  IncidentesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _IncidentesPageState createState() => _IncidentesPageState();
}

class _IncidentesPageState extends State<IncidentesPage> {


  void _incrementCounter() {
    setState(() {

      MyForm();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: getListView(),
      ),

      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyForm()),
          );
        }
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget getListView(){
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View !"),
        trailing: Icon(Icons.warning_outlined),
      ),

    ],
  );
  return listView;
}




