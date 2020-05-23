import 'package:flutter/material.dart';
import 'package:vgx_dev/pc.dart';
import 'item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff7159c1),
        accentColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter - Adolpho Cavalcanti'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: () {},),
          IconButton(icon: Icon(Icons.favorite_border), color: Colors.white, onPressed: () {},),
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          Item(
            tag: "Samsung Galaxy A10 - Black",
          ),
          Item(
            tag: "Samsung Galaxy A10 - White",
          ),
          Pc(
            tag: 'Ultrabook Dell 8GB RAM'
          ),
          Pc(
            tag: 'Ultrabook Dell 4GB RAM'
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        tooltip: 'Increment',
        child: Icon(Icons.add, color: Colors.white,),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
