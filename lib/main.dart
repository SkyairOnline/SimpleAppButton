import 'package:SimpleFormButton/form.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple App Button'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: FormScreen(),
        ), 
      ),
    );
  }
}
