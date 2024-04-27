// ignore: file_names
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  TextEditingController tarefaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: const Color(0xFFC1007E),
          title: const Center(
              child: Text(
            "Lista de tarefas",
            style: TextStyle(color: Colors.white),
          )),
          iconTheme: const IconThemeData(color: Colors.white),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Image.asset("assets/logo_home.png"),
            )
          ]),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 18),
                  child: TextField(
                    controller: tarefaController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      // suffixIcon: TextButton(
                      //   onPressed: () {},
                      //   child: const Text(
                      //     "ADD",
                      //     style: TextStyle(
                      //         color: Colors.white,
                      //         backgroundColor: Color(0xFFC1007E)),
                      //   ),
                      // ),
                      labelText: "Nova tarefa",
                      labelStyle: TextStyle(
                        color: Colors.pink,
                        fontSize: 15.0,
                      ),
                      hintText: "Digite nova tarefa",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
              TextButton(
                child: const Text("ADD",
                style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                ),
                onPressed: () {
                  
                },
              )
            ],
          ),
          //Text("Passei aqui"),
        ],
      ),
    );
  }
}