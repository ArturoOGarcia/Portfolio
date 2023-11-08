import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BotaoCopiar extends StatelessWidget {
  final Icon icone;
  final String msg;
  final String copiar;
  final String snackBar;
  const BotaoCopiar(
      {super.key,
      required this.icone,
      required this.msg,
      required this.copiar,
      required this.snackBar});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: msg,
      
      child: IconButton(
          onPressed: () {
            Clipboard.setData(ClipboardData(text: copiar));
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(snackBar)));
          },
          icon: icone,
          iconSize: 120,
          color: Colors.white,
          hoverColor: Colors.transparent,),
    );
  }
}
