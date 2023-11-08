import 'package:flutter/material.dart';
import 'package:portfolio/utils/textos.dart';

class BodyWeb extends StatelessWidget {
  const BodyWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 150.0),
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              CircleAvatar(
                radius: 170,
                backgroundImage: AssetImage('assets/imgs/eu.jpg'),
              ),
              SizedBox(
                height: 500,
                width: 900,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 100,
                    top: 30,
                  ),
                  child: Text(Textos.textoHomePage,
                    style: TextStyle(
                      fontSize: 37.2,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
