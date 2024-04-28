// ignore: file_names
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  TextEditingController nomeTarefaController = TextEditingController();
  List<Map<String, dynamic>> tarefas = [];

  void deleteCompletedTasks() {
    setState(() {
      tarefas.removeWhere((tarefa) => tarefa['concluida'] == true);
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextField(
                    controller: nomeTarefaController,
                    decoration: const InputDecoration(
                      labelText: 'Nova Tarefa',
                      labelStyle: TextStyle(
                          color: Color(0xFFC1007E),
                          fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(),
                    ),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFC1007E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          0), // Define o raio da borda como 0 para um quadrado
                    ),
                  ),
                  onPressed: () {
                    if (nomeTarefaController.text.trim().isNotEmpty) {
                      setState(() {
                        tarefas.add({
                          'nome': nomeTarefaController.text,
                          'concluida': false,
                        });
                        nomeTarefaController.text = '';
                      });
                    }
                  },
                  child:
                      const Text('ADD', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: tarefas.map((tarefa) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/Group1.png"),
                    Text(
                      tarefa['nome'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Checkbox(
                      value: tarefa['concluida'],
                      onChanged: (value) {
                        setState(() {
                          tarefa['concluida'] = value;
                        });
                      },
                    ),
                  ],
                );
              }).toList(),
            ),
            if (tarefas.isNotEmpty)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              0), // Define o raio da borda como 0 para um quadrado
                        ),
                      ),
                      onPressed: () {
                        deleteCompletedTasks();
                      },
                      child: const Icon(Icons.delete)),
                  Image.asset("assets/Vector.png"),
                  const Text("Criar Apps incriveis",style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
          ],
        ),
      ),
    );
  }
}
