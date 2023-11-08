import 'package:flutter/material.dart';
import 'package:portfolio/pages/contato_page.dart';
import 'package:portfolio/pages/conhecimentos_page.dart';
import 'package:portfolio/pages/home_page/home_page.dart';
import 'package:portfolio/pages/projetos_page.dart';
import 'package:portfolio/widgets/buttons/botao_pagina.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 0, 34, 68),
      child: ListView(
        children: [
          Container(
            height: 100,
            alignment: Alignment.center,
            color: Colors.black,
            child: const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: BotaoPagina(
                texto: "Arturo Ochoa Garcia",
                pagina: HomePage(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: BotaoPagina(
              texto: "Conhecimentos",
              pagina: ConhecimentosPage(),
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: BotaoPagina(
              texto: "Projetos",
              pagina: ProjetosPage(),
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: BotaoPagina(
              texto: "Contato",
              pagina: ContatoPage(),
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
