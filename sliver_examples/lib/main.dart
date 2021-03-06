import 'package:flutter/material.dart';
import 'sliverList.dart';
import 'sliverGrid.dart';
import 'sliverAppBar.dart';
import 'sliverPersistentHeader.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sliver Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Sliver Demo'),
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SliverListDemo()));
              },
              child: Text('Sliver List Demo'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SliverGridDemo()));
              },
              child: Text('Sliver Grid Demo'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SliverAppBarDemo()));
              },
              child: Text('Sliver App Bar Demo'),
            ),
             RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SliverPersistentHeaderDemo()));
              },
              child: Text('Sliver Persistent Header Demo'),
            )
          ],
        )
      ),
    );
  }
}
