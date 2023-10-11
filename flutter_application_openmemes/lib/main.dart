import 'package:flutter/material.dart';
import 'package:flutter_application_openmemes/generator_page.dart';
import 'package:flutter_application_openmemes/login_page.dart';

void main() {
  runApp( const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'OpenMemes',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
