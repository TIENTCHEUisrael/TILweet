import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/components/widgets/textWidget.dart';
import 'package:twitter_clone/constant/colors.dart';

import '../../routes/route_name.dart';

class AuthFinish extends StatefulWidget {
  const AuthFinish({super.key});

  @override
  State<AuthFinish> createState() => _AuthFinishState();
}

class _AuthFinishState extends State<AuthFinish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 60,
                  left: 15,
                  right: 15,
                  top: 20,
                ),
                child: Text(
                  "Découvrez ce qui se passe dans le monde en temps réel",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, homeRoute);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                ),
                child: TextWidget(
                  color: white,
                  text: "Créer votre compte",
                  size: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 150, left: 14, right: 14),
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
                          onPressed: () {
                            Navigator.pushNamed(context, authentificationlog);
                          },
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
