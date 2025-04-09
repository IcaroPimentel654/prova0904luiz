import 'package:flutter/material.dart';
import 'package:projeto_prova/person.dart';

class PersonWidget extends StatelessWidget {
  final Person person;
  const PersonWidget({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(person.imagePath),
                  radius: 30,
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${person.name} ${person.lastName}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'ID: ${person.id}',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text('Phone: ${person.number}'),
            Text('CPF: ${person.cpf}'),
            Text(
              'Birthday: ${person.birthday.toLocal().toString().split(' ')[0]}',
            ),
            Text(
              'Registered At: ${person.registeredAt.toLocal().toString().split(' ')[0]}',
            ),
          ],
        ),
      ),
    );
  }
}
