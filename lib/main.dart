import 'package:flutter/material.dart';
import 'package:proj_estruturanova/views/home_screen.dart';
import 'package:proj_estruturanova/views/second_screen.dart';
import 'package:proj_estruturanova/views/third_screen.dart';
import 'package:proj_estruturanova/views/fourth_screen.dart';
import 'package:proj_estruturanova/views/fifth_screen.dart';

void main() {
  runApp(const ProjEstruturaNova());
}

class ProjEstruturaNova extends StatelessWidget {
  const ProjEstruturaNova({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nova estrutura de arquivos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes:{
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
        '/fourth': (context) => const FourthScreen(),
        '/fifth': (context) => const FifthScreen(),
      },
    );
  }
}
