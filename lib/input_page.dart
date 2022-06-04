import 'package:flutter/material.dart';
import 'bodyApp.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCLUATE'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0)
      ),
      body:const BodyApp(),
    );
  }
}