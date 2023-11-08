import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/breakpoints.dart';
import 'package:portfolio/widgets/app_bar/app_bar_mobile.dart';
import 'package:portfolio/widgets/app_bar/app_bar_web.dart';
import 'package:portfolio/widgets/buttons/botao_copiar.dart';
import 'package:portfolio/widgets/buttons/botao_link_icon.dart';
import 'package:portfolio/widgets/drawer.dart';


class ContatoPage extends StatelessWidget {
  const ContatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 34, 68), // Cor de fundo
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
                      ? const EdgeInsets.only(top: 60, bottom: 140)
                      : const EdgeInsets.only(top: 10, bottom: 110),
                  child: Text(
                    "Conhecimentos",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth > 450 ? 60 : 35),
                  ),
                ),
                const Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 100,
                  runSpacing: 30,
                  children:[
                    BotaoLinkIcon(
                        msg: "LinkedIn",
                        icone: Icon(FontAwesomeIcons.linkedin),
                        url:
                            "https://www.linkedin.com/in/arturo-ochoa-a47069271"),
                    BotaoLinkIcon(
                        msg: "GitHub",
                        icone: Icon(FontAwesomeIcons.github),
                        url: "https://github.com/ArturoOGarcia"),
                    BotaoLinkIcon(
                        msg: "Instagram",
                        icone: Icon(FontAwesomeIcons.instagram),
                        url: "https://www.instagram.com/arturochoag/"),
                    BotaoCopiar(
                      msg: "Copiar email",
                      icone: Icon(Icons.email),
                      copiar: "arturoochoagarcia.aog@gmail.com",
                      snackBar: "Email copiado para área de transferência",
                    )
                  ],
                ),
              ],
              )
            ,
          ),
        ),
      );
    });
  }
}
