import 'package:flutter/material.dart';

import 'Pantallas/chatpantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chat()
    );
    throw UnimplementedError();
  }
  
}
