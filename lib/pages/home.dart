import 'package:aula_tres/models/tarefas.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  var tarefas = new List<Tarefa>();

  Home() {
    tarefas.add(new Tarefa(id:1,descricao: 'teste01',pronto: false));
    
    tarefas.add(new Tarefa(id:1,descricao: 'teste02',pronto: false));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text('Tarefas'),
      ),
      body: ListView.builder (
        itemCount: tarefas.length,
        itemBuilder: (BuildContext contex, int index){
          return Text(tarefas[index].descricao);
        },
      ),
      bottomNavigationBar: BottomAppBar (
        color: Colors.purple[900],
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
  
}