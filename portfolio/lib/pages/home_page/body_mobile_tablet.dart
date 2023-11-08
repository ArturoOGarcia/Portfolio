import 'package:flutter/material.dart';
import 'package:portfolio/utils/textos.dart';

class BodyMobileTablet extends StatelessWidget {
  const BodyMobileTablet({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double fontSize = screenWidth * 0.07; 
    double avatarRadius = screenWidth * 0.15; 

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,  
          vertical: screenHeight * 0.05,  
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: avatarRadius,  
              backgroundImage: const AssetImage('assets/imgs/eu.jpg'),
            ),
            SizedBox(height: screenHeight * 0.02),  
            Text(Textos.textoHomePage,
              style: TextStyle(
                fontSize: fontSize,  
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
