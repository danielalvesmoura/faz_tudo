import 'package:flutter/material.dart';

class CardSubcategoria extends StatelessWidget {
  final IconData icone;
  final double tamanhoIcone;
  final Color corTexto;
  final Color corTexto;
  final String titulo;
  final VoidCallback onTap;

  const CardSubcategoria({
    required this.icone,
    required this.tamanhoIcone,
    required this.cor,
    required this.titulo,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 36, 56, 155),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5
          ),
          child: Row(
            children: [
              Icon(icone, size: tamanhoIcone, color: cor),
              Text(
                titulo,
                style: TextStyle(
                  fontSize: 20,
                  color: cor,
                  height: 1.6,
                  fontWeight: FontWeight(500)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}