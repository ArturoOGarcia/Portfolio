import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BotaoLinkIcon extends StatelessWidget {
  final Icon icone;
  final String url;
  final String msg;
  const BotaoLinkIcon({super.key, required this.icone, required this.url, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: msg,
      child: IconButton(
          onPressed: () async {
            final urlUri = Uri.parse(url);
            if (await canLaunchUrl(urlUri)) {
              await launchUrl(urlUri);
            } else {
              throw 'Erro $url';
            }
          },
          icon: icone, 
          iconSize: 110,
          color: Colors.white,
          hoverColor: Colors.transparent,),
    );
  }
}
