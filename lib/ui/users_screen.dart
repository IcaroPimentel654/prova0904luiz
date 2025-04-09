import 'package:flutter/material.dart';
import 'package:projeto_prova/models/users.dart';
import 'package:projeto_prova/ui/person_widget.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voltar'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // ao clicar no botao de voltar, o app volta para a tela inicial
            // usando o pushReplacementNamed para substituir a tela atual
            Navigator.pushReplacementNamed(context, 'home');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // metodo getPersons() retorna uma List<Person>
          // seguindo o padrão do getExample()
          // que retorna um objeto Person
          // porem retornando uma lista para ser exibida
          // na tela de usuarios
          itemCount: Users().getPersons().length,
          itemBuilder: (context, index) {
            final users = Users().getPersons();
            return PersonWidget(person: users[index]);
          },
        ),
      ),
    );
  }
}
