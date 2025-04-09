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
            Navigator.pushReplacementNamed(context, 'home');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
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
