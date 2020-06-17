import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Absorb Pointer Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Absorb Pointer Widget'),
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
  Key keyAbsorbPoiner;

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
      ),
      body: Center(
        child: AbsorbPointer(
          absorbing: false,
          ignoringSemantics: false,
          key: keyAbsorbPoiner,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Semantics(
                label: "Semantics 1",
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Button $_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Button ${_counter + 1}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Button ${_counter + 2}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Button ${_counter + 3}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              FlatButton(
                onPressed: _incrementCounter,
                child: Text(
                  'Button ${_counter + 4}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
