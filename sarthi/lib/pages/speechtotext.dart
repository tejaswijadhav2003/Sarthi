import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class MyConverter extends StatefulWidget{
  const MyConverter({super.key});

  @override
  State<MyConverter> createState() => _MyConverterState();
}

class _MyConverterState extends State<MyConverter>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sarthi' ,style: TextStyle(color: Colors.white),), backgroundColor: Colors.black,),
    );
  }

}