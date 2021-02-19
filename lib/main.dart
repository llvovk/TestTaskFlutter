import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main(){
  runApp(new MyWidget());
}

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            body: ContainerClass()
            ),
    );
  }
}

class ContainerClass extends StatefulWidget{
  ContainerClass({ Key key}) : super(key: key);
    @override
    _ContainerClassState createState() => _ContainerClassState();}

class _ContainerClassState extends State<ContainerClass> {
  @override

  Widget build(BuildContext context) {

    final Random _random = Random();
    Color _color = Color(0xFFFFFFFF);

    return GestureDetector(
        onTap: () {
          setState(() { });
        },
      child: Container(
        color: _color = Color.fromARGB(
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),
        ),
        child: Center(child: Text('Hey there'))
      )
    );
  }
}