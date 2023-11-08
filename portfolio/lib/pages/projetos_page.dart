import 'package:flutter/material.dart';
import 'package:portfolio/utils/breakpoints.dart';
import 'package:portfolio/utils/textos.dart';
import 'package:portfolio/widgets/app_bar/app_bar_mobile.dart';
import 'package:portfolio/widgets/app_bar/app_bar_web.dart';
import 'package:portfolio/widgets/container_proj.dart';
import 'package:portfolio/widgets/drawer.dart';

class ProjetosPage extends StatelessWidget {
  const ProjetosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 34, 68),
        appBar: constraints.maxWidth < mobileBreakpoint
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: AppBarMobile(),
              )
            : const PreferredSize(
                preferredSize: Size(double.infinity, 72),
                child: AppBarWeb(),
              ),
        endDrawer: constraints.maxWidth < mobileBreakpoint
            ? const DrawerWidget()
            : null,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: constraints.maxWidth > mobileBreakpoint
                      ? const EdgeInsets.only(top: 45, bottom: 30)
                      : const EdgeInsets.only(top: 10, bottom: 20),
                  child: Text(
                    "Projetos",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth > 450 ? 60 : 35),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 100,
                    runSpacing: 30,
                    children: [
                      ContainerProj(
                        imagem: AssetImage("assets/imgs/Codequest.png"), 
                        titulo: "Code quest", 
                        linguagem: "Java, SQL - MySQL", 
                        data: "2023", 
                        grupo: "Sim", 
                        descricao: Textos.descCodeQuests,
                        url: "https://github.com/BrunnoS1/Code-Quest"),
                      ContainerProj(
                        imagem: AssetImage("assets/imgs/Icone.png"), 
                        titulo: "APAE-SCS", 
                        linguagem: "html, CSS, JavaScript", 
                        data: "2023", 
                        grupo: "Sim", 
                        descricao: Textos.descAPAE,
                        url: "https://github.com/BrunnoS1/Code-Quest",),
                      ContainerProj(
                        imagem: AssetImage("assets/imgs/eu.jpg"), 
                        titulo: "Portfolio", 
                        redonda: true, 
                        linguagem: "Dart - Flutter", 
                        data: "2023", 
                        grupo: "Não", 
                        descricao: Textos.descPortfolio,
                        url: "https://github.com/BrunnoS1/Code-Quest",)
                    ]
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
