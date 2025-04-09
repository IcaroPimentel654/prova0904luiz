import 'package:flutter/material.dart';
import 'package:projeto_prova/person.dart';
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
          itemCount: 10, // Replace with your desired item count
          itemBuilder: (context, index) {
            return PersonWidget(
              person:
                  Person.getExample(), // Replace with your actual Person object
            );
          },
        ),
      ),
    );
  }
}
