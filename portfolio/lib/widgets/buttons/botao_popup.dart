import 'package:flutter/material.dart';

class BotaoPopup extends StatelessWidget {
  final Widget icone;
  final String msg;
  final String titulo;
  final String conteudo;
  final ImageProvider? imagem;

  const BotaoPopup(
      {super.key,
      required this.icone,
      required this.msg,
      required this.titulo,
      required this.conteudo,
      this.imagem});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: msg,
      child: IconButton(
        onPressed: () => _showPopup(context, titulo, conteudo),
        icon: icone,
        iconSize: 90,
        color: Colors.white,
        hoverColor: Colors.transparent,
      ),
    );
  }

  void _showPopup(BuildContext context, String titulo, String conteudo) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              titulo,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            content: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ListBody(
                  children: [
                    Text(conteudo,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(fontSize: 25)),
                    if (imagem != null) ...[
                      Container(
                        height: 30,
                      ),
                      Image(image: imagem!),
                    ]
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Fechar",
                    style: TextStyle(fontSize: 25),
                  ))
            ],
          );
        });
  }
}
