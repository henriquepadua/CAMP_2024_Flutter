import 'package:camp_2024/pages/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC1007E),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 250),
                    child: Column(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/logo_ioasys.png"),
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 80)),
                      const Text(
                        "Seja bem vind@!",
                        style: TextStyle(color: Colors.white, fontSize: 32),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10)),
                      const Text("Lista de tarefas",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10)),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80.0, vertical: 10),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            hintText: "Digite seu email",
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80.0),
                        child: TextFormField(
                          controller: senhaController,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            hintText: "Digite sua senha",
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          elevation: 20,
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage()),
                          );
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(fontSize: 32, color: Colors.white),
                        ),
                      ),
                    ]))
              ]),
        ),
      ),
    );
  }
}