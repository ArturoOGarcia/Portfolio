import 'package:flutter/material.dart';

class BotaoTextoPopup extends StatelessWidget {
  final String msg;
  final String titulo;
  final String conteudo;

  const BotaoTextoPopup({
    super.key,
    required this.msg,
    required this.titulo,
    required this.conteudo,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: msg,
      child: MouseRegion(
        cursor: SystemMouseCursors.click, // Changes the cursor to a click hand
        child: GestureDetector(
          onTap: () => _showPopup(context, titulo, conteudo),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
            decoration: BoxDecoration(
              color: Colors.transparent, // Set the color to white here
              borderRadius: BorderRadius.circular(4), // You can customize this value
              // Optionally, you can add a border or shadow here as well
            ),
            child: Text(
              titulo,
              style: const TextStyle(
                color: Colors.white, // This ensures the text color contrasts with the white background
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showPopup(BuildContext context, String titulo, String conteudo) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(titulo),
          content: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                conteudo,
                style: const TextStyle(fontSize: 25),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Fechar"),
            ),
          ],
        );
      },
    );
  }
}
