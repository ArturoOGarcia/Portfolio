import 'package:flutter/material.dart';
import 'package:portfolio/pages/contato_page.dart';
import 'package:portfolio/pages/conhecimentos_page.dart';
import 'package:portfolio/pages/home_page/home_page.dart';
import 'package:portfolio/pages/projetos_page.dart';
import 'package:portfolio/widgets/buttons/botao_pagina.dart';

class AppBarWeb extends StatelessWidget {
  const AppBarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double dynamicPadding = screenWidth > 1000 ? 70.0 : 20;
    
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 72,
      backgroundColor: Colors.black,
      title: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: dynamicPadding, bottom: 7.0),
            child: const BotaoPagina(
              texto: "Arturo Ochoa Garcia",
              pagina: HomePage(),
              style: TextStyle(fontSize: 32.0, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),   
          const BotaoPagina(
            texto: "Conhecimentos",
            pagina: ConhecimentosPage(),
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
          const SizedBox(width: 16),   
          const BotaoPagina(
            texto: "Projetos",
            pagina: ProjetosPage(),
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
          const SizedBox(width: 16),   
          const BotaoPagina(
            texto: "Contato",
            pagina: ContatoPage(),
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ],
      ),
    );
  }
}
