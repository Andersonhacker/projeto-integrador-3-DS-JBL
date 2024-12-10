import 'package:flutter/material.dart';
import 'package:pi_anderson/pagina_usuario.dart';
import 'package:pi_anderson/principal_screan.dart';
import 'package:pi_anderson/screns/cadastro_page.dart';
import 'package:pi_anderson/screns/login_screan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RecicleAPP',
      home: login_screan(),
      debugShowCheckedModeBanner: false,
    );
  }
}
