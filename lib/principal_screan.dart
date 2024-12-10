import 'package:flutter/material.dart';
import 'package:pi_anderson/pagina_usuario.dart';

class PrincipalScrean extends StatefulWidget {
  const PrincipalScrean({super.key});

  @override
  State<PrincipalScrean> createState() => _PrincipalScreanState();
}

class _PrincipalScreanState extends State<PrincipalScrean> {
  Color topColor = Colors.green;
  Color bottomColor = Color.fromARGB(255, 80, 110, 97);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                topColor,
                bottomColor,
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Image.asset(
                  "assets/reciclagem.png",
                  height: 135,
                ),
              ),
              Text(
                "?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => pagina_usuario(),
                    ),
                  );
                },
                child: Text(
                  "Buscar",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
