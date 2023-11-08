import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BotaoLinkTexto extends StatelessWidget {
  final String url;
  final String msg;
  const BotaoLinkTexto({super.key, required this.url, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: msg,
      child: TextButton(
          onPressed: () async {
            final urlUri = Uri.parse(url);
            if (await canLaunchUrl(urlUri)) {
              await launchUrl(urlUri);
            } else {
              throw 'Erro $url';
            }
          },
          child: Text(msg, 
            style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, 
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            decorationThickness: 1)),),
    );
  }
}
