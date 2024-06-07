import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String nomeDoBotao;
  final Color cor;
  final Color corDaFonte;

  const Botao({
    super.key,
    required this.nomeDoBotao,
    required this.cor,
    required this.corDaFonte,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width / 1.15,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(cor),
          padding: const MaterialStatePropertyAll(EdgeInsets.all(15)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          nomeDoBotao,
          style: TextStyle(
              color: corDaFonte, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
