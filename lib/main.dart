import 'package:flutter/material.dart';
import 'music.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:audioplayer/audioplayer.dart';
import 'package:volume/volume.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Musique halal'),
        leading: Icon(Icons.music_note),
        elevation: 20.0,
        backgroundColor: Colors.blueGrey,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              width: 200,
              color: Colors.amberAccent,
              margin: EdgeInsets.only(top: 20.0),
              child: Image.asset('assets/coran.jpg'),
            )
          ],
        ),
          
      )
      ); // This trailing comma makes auto-formatting nicer for build methods.

  }
}
