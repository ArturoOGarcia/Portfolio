import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/breakpoints.dart';
import 'package:portfolio/utils/textos.dart';
import 'package:portfolio/widgets/app_bar/app_bar_mobile.dart';
import 'package:portfolio/widgets/app_bar/app_bar_web.dart';
import 'package:portfolio/widgets/buttons/botao_popup.dart';
import 'package:portfolio/widgets/buttons/botao_texto_popup.dart';
import 'package:portfolio/widgets/drawer.dart';

class ConhecimentosPage extends StatelessWidget {
  const ConhecimentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor:
            const Color.fromARGB(255, 0, 34, 68), // Background color
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
                      ? const EdgeInsets.only(top: 60, bottom: 100)
                      : const EdgeInsets.only(top: 10, bottom: 20),
                  child: Text(
                    "Conhecimentos",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth > 450 ? 60 : 35),
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 100,
                  runSpacing: 30,
                  children: [
                    const BotaoPopup(
                      icone: Icon(FontAwesomeIcons.python),
                      msg: "Python",
                      titulo: "Python",
                      conteudo: Textos.textoPython,
                    ),
                    const BotaoPopup(
                      icone: Icon(FontAwesomeIcons.java), 
                      msg: "Java", 
                      titulo: "Java", 
                      conteudo: Textos.textoJava,
                      imagem: AssetImage("assets/imgs/CertificadoOracle.jpg"),),
                    BotaoPopup(
                      icone: Image.asset("assets/imgs/flutter_logo.png", 
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,), 
                      msg: "Flutter", 
                      titulo: "Flutter", 
                      conteudo: Textos.textoFlutter),
                    const BotaoPopup(
                      icone: Icon(FontAwesomeIcons.database), 
                      msg: "Banco de Dados", 
                      titulo: "Banco de dados", 
                      conteudo: Textos.textoBD),
                    const BotaoPopup(
                      icone: Icon(FontAwesomeIcons.html5), 
                      msg: "html", 
                      titulo: "html", 
                      conteudo: Textos.textoHtml),
                    BotaoPopup(
                      icone: Image.asset("assets/imgs/javascript_logo.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,), 
                      msg: "JavaScript", 
                      titulo: "JavaScript", 
                      conteudo: Textos.textoJavaScript),
                    BotaoPopup(
                      icone: Image.asset("assets/imgs/arduingo_logo.png",
                      width: 140,
                      height: 120,
                      fit: BoxFit.cover,), 
                      msg: "Arduino", 
                      titulo: "Arduino", 
                      conteudo: Textos.textoArduino,
                      imagem: const AssetImage("assets/imgs/CertificadoArduino_page-0001.jpg"),),
                    const BotaoPopup(
                      icone: Icon(FontAwesomeIcons.git), 
                      msg: "Git", 
                      titulo: "Git", 
                      conteudo: Textos.textoGit),
                    const BotaoTextoPopup(
                      msg: "Inglês",
                      titulo: "Inglês", 
                      conteudo: Textos.textoIngles),
                    const BotaoTextoPopup(
                      msg: "Espanhol",
                      titulo: "Espanhol", 
                      conteudo: Textos.textoEspanhol),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
