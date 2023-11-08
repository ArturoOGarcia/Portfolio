import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page/home_page.dart';
import 'package:portfolio/widgets/buttons/botao_pagina.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;

  double fontSize = screenWidth <= 415 ? (screenWidth > 300 ? 20.0 : 16) : 32.0;
    return AppBar(
      toolbarHeight: 56,  
      backgroundColor: Colors.black,  
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 5.0,
              bottom: 7.0,
            ),
            child: BotaoPagina(
              texto: "Arturo Ochoa Garcia",
              pagina: const HomePage(),
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: const Icon(Icons.menu),
          color: Colors.white,
          iconSize: 35,
        )
      ],
    );
  }
}
