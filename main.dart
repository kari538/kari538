import 'package:flutter/material.dart';

////Works beautifully for showing a background color and an appbar, but no hot reload
//void main() => runApp(
//      MaterialApp(
//        home: Scaffold(
//          appBar: AppBar(
//            title: Text('App for Testing Widgets'),
//          ),
//          backgroundColor: Colors.purpleAccent,
//        ),
//      ),
//    );

//And now it works with Hot Reload :)
void main() {
  runApp(
    MaterialApp(home: MyTestApp()),
  );
}

class MyTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Test App for Widgets',
          style: TextStyle(
            color: Colors.deepPurpleAccent[100],
//            color: Colors.yellowAccent,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text('Hej'),
          transform: Matrix4.rotationZ(0.3),
          color: Colors.white,
          padding: EdgeInsets.all(10.0),
        ),
      ),
    );
  }
}
