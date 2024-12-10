import 'package:flutter/material.dart';

class pagina_usuario extends StatefulWidget {
  const pagina_usuario({super.key});

  @override
  State<pagina_usuario> createState() => _pagina_usuarioState();
}

class _pagina_usuarioState extends State<pagina_usuario> {
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
      ),
      drawer: Drawer(
          child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.person_3,
              color: Colors.greenAccent,
            ),
            title: Text("Minha Conta"),
          ),
          ListTile(
            leading: Icon(
              Icons.mail_outline,
              color: Colors.greenAccent,
            ),
            title: Text("Mensagens"),
          ),
          ListTile(
            leading: Icon(
              Icons.archive_outlined,
              color: Colors.greenAccent,
            ),
            title: Text("Histórico"),
          ),
          ListTile(
            leading: Icon(
              Icons.settings_applications_sharp,
              color: Colors.greenAccent,
            ),
            title: Text("Configurações"),
          ),
          ListTile(
            leading: Icon(
              Icons.help_center_outlined,
              color: Colors.greenAccent,
            ),
            title: Text("ajuda"),
          ),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: Colors.greenAccent,
            ),
            title: Text("Logout"),
          ),
        ],
      )),
      appBar: AppBar(
        title: Center(child: Text("Meu perfil")),
      ),
    );
  }
}
