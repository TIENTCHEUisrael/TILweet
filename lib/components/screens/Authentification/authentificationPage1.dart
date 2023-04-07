import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/components/widgets/textWidget.dart';
import 'package:twitter_clone/constant/colors.dart';

class AuthPage1 extends StatefulWidget {
  const AuthPage1({super.key});

  @override
  State<AuthPage1> createState() => _AuthPage1State();
}

class _AuthPage1State extends State<AuthPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,
                ),
              ),
              TextWidget(
                text: "TILweet",
                color: Colors.blue,
                size: 15,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 80,
                  left: 15,
                  right: 15,
                ),
                child: Text(
                  "Découvrez ce qui se passe dans le monde en temps réel",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: white,
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: Image.asset(
                        "assets/images/png/google.png",
                        height: 20,
                      ),
                    ),
                    TextWidget(
                      color: Colors.black,
                      text: "Continuez avec Google",
                      size: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        right: 2,
                      ),
                      height: 1,
                      width: 20,
                      color: black,
                    ),
                    TextWidget(
                      text: "Ou",
                      color: black,
                      size: 13,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 2,
                      ),
                      height: 1,
                      width: 20,
                      color: black,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: black,
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                ),
                child: TextWidget(
                  color: white,
                  text: "Créer un compte",
                  size: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                child: Expanded(
                  child: Text(
                    "En vous inscrivant vous acceptez nos condition d'Utilisation,notre politique de confidentialité et notre utilisation des cookies",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 14,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Vous avez déja un compte?',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Connectez-vous',
                            style: GoogleFonts.poppins(
                              color: Colors.blue,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
