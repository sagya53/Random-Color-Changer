import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Color',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List _color = [Colors.blue, Colors.red, Colors.greenAccent,Colors.black, Colors.white, Colors.transparent];
  var index = 0;
  Random random = new Random();

  _colorChanger(){
    setState(() {
     index = random.nextInt(_color.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color[index],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: RaisedButton(
          onPressed:() => _colorChanger(),
          child: Text("Click... to Change Color"),
          color: _color[index],
        ),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
