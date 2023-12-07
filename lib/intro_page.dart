import 'package:flutter/material.dart';
import 'package:testflutteraicha/home_page.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Titre "Atlas Monde"
              Text(
                'Atlas Monde',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 16), // Espace entre le titre et l'image
              // Image (fournie en annexe)
              Image.asset(
                'assets/images/monde.jpg', // Assurez-vous d'ajuster le chemin de votre image
                height: 200, // Hauteur de l'image (ajustez selon vos besoins)
              ),
              SizedBox(height: 16), // Espace entre l'image et le texte "Enter"
              // Texte "Enter" en tant que lien
              Text(
                'Enter',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  // Ajoutez un soulignement pour ressembler à un lien
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
