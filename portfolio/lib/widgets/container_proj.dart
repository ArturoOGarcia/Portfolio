import 'package:flutter/material.dart';
import 'package:portfolio/widgets/buttons/botao_link_texto.dart';

class ContainerProj extends StatelessWidget {
  final ImageProvider imagem;
  final String titulo;
  final bool redonda;
  final String linguagem;
  final String data;
  final String grupo;
  final String descricao;
  final String url;

  const ContainerProj({
    super.key,
    required this.imagem,
    required this.titulo,
    this.redonda = false,
    required this.linguagem,
    required this.data,
    required this.grupo,
    required this.descricao,
    required this.url
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 400,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 6, 56, 2),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: BotaoLinkTexto(msg: titulo, url: url),
            ),
          ),
          redonda
              ? CircleAvatar(
                  backgroundImage: imagem,
                  radius: 82.5,
                )
              : Image(
                  image: imagem,
                  width: 154,
                  height: 165,
                  fit: BoxFit.contain,
                ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 25, right: 8, bottom: 8),
            child: Row(
              children: [
                Expanded( 
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(fontSize: 22, color: Colors.white, height: 1.5),
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'Linguagem:  ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: linguagem),
                        const TextSpan(
                          text: '\nData:  ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: data),
                        const TextSpan(
                          text: "\nGrupo:  ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: grupo),
                        const TextSpan(
                          text: "\nDescrição:  ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: descricao),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
