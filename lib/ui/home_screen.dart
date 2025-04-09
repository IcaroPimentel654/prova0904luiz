import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Informações Confidenciais GOV.BR",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Stack(
        children: [
          Positioned(
            top: -60,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/app_images/logo_gov_br.png',
              height: 300,
              fit: BoxFit.contain,
            ),
          ),
          Center(
            // acessa a rota 'users' ao clicar no botao
            // usando o pushReplacementNamed para substituir a tela atual
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'users');
              },
              child: const Text('Acessar Usuários Registrados'),
            ),
          ),
        ],
      ),
    );
  }
}
