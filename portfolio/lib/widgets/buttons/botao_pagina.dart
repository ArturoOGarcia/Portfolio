import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BotaoPagina extends StatelessWidget {
  final String texto;
  final TextStyle? style;  
  final Widget pagina;  

  const BotaoPagina({
    super.key,
    required this.texto,
    this.style,  
    required this.pagina
    });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushAndRemoveUntil(  
            context,
            MaterialPageRoute(
                builder: (context) => pagina),
                (Route<dynamic> route) => false); 
      },
      child: AutoSizeText(
        texto,
        style: style ??
            DefaultTextStyle.of(context)
                .style,  
      ),
    );
  }
}
