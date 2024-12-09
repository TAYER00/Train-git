import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Définition du fond avec un dégradé
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange, Colors.black], // Dégradé du orange au noir
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Texte d'introduction
              Text(
                'Bienvenue dans l\'Application',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors
                      .white, // Texte en blanc pour contraster avec le fond
                ),
              ),
              SizedBox(height: 20),
              // Bouton pour naviguer ou effectuer une action
 ElevatedButton(
                onPressed: () {
                                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Manage_Page()),
                        );
                  // Action à effectuer lors de l'appui sur le bouton
                  // Par exemple, naviguer vers une autre page (à adapter selon l'app)
                  print('Bouton appuyé!');
                },
                child: Text('Commencer'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent, // Couleur du bouton
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
