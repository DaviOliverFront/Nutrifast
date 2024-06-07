import 'package:flutter/material.dart';
import 'package:nutrifast/widgets/botao.dart';
import 'package:nutrifast/widgets/campo_texto.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(76, 175, 80, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100.0),
                      )),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/Nutrifast_menor.png',
                      width: 100.0,
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                const CampoDeTexto(
                    nomeCampoDeTexto: 'Email',
                    nomeEspacoReservado: 'Digite seu email'),
                const SizedBox(height: 5),
                const CampoDeTexto(
                    nomeCampoDeTexto: 'Senha',
                    nomeEspacoReservado: 'Digite sua senha'),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    SizedBox(width: 250),
                    Text(
                      "Esqueceu a senha?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Botao(
                  nomeDoBotao: "Login",
                  cor: Colors.transparent,
                  corDaFonte: Colors.white,
                ),
                const SizedBox(height: 50),
                const Botao(
                  nomeDoBotao: "Primeira vez no APP? Cadastre-se",
                  cor: Colors.white,
                  corDaFonte: Color.fromRGBO(76, 175, 79, 1),
                )
              ],
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.0),
                  topRight: Radius.circular(100.00),
                ),
              ),
              child: const Text(
                'NF',
                style: TextStyle(
                  color: Color.fromRGBO(76, 175, 80, 1),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 45.5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
