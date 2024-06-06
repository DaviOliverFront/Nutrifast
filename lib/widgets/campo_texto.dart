import 'package:flutter/material.dart';

class CampoDeTexto extends StatelessWidget {
  final String nomeCampoDeTexto;
  final String nomeEspacoReservado;

  const CampoDeTexto(
      {super.key,
      required this.nomeCampoDeTexto,
      required this.nomeEspacoReservado});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              nomeCampoDeTexto,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
              hintText: nomeEspacoReservado,
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey)),
              fillColor: Colors.white,
              filled: true,
              contentPadding: const EdgeInsets.all(20),
            ),
          ),
        ],
      ),
    );
  }
}
