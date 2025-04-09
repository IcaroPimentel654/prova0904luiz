import 'package:flutter/material.dart';
import 'package:projeto_prova/ui/home_screen.dart';
import 'package:projeto_prova/ui/users_screen.dart';

void main() {
  runApp(const ProjetoProva());
}

class ProjetoProva extends StatelessWidget {
  const ProjetoProva({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "home": (context) => HomeScreen(),
        "users": (context) => UsersScreen(),
      },
      initialRoute: "home",
    );
  }
}
