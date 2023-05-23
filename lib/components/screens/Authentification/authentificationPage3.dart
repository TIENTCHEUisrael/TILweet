import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/components/routes/route_name.dart';
import 'package:twitter_clone/constant/colors.dart';

import '../../widgets/textWidget.dart';

class AuthPage3 extends StatefulWidget {
  const AuthPage3({super.key});

  @override
  State<AuthPage3> createState() => _AuthPage3State();
}

class _AuthPage3State extends State<AuthPage3> {
  TextEditingController _searchController = TextEditingController();
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: BackButton(
          color: black,
        ),
        title: TextWidget(
          text: "TILweet",
          color: Colors.blue,
          size: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 0, top: 15),
                            child: TextWidget(
                              text: "Sélectionnez votre langue ou vos langues",
                              color: black,
                              size: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 0, top: 15),
                            child: TextWidget(
                              text:
                                  "Sélectionnez la ou les langues que vous voulez utilisez pour personnaliser votre experience Twitter",
                              color: black,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5, bottom: 15),
                      child: ListTile(
                        title: TextField(
                          controller: _searchController,
                          style: GoogleFonts.poppins(color: grey),
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            labelText: "Rechercher des langues",
                            labelStyle: GoogleFonts.poppins(
                              color: black,
                              fontSize: 10,
                            ),
                            icon: Icon(
                              Icons.search,
                              color: black,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: TextWidget(
                              text: "francais - francais",
                              color: black,
                              size: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Checkbox(
                            value: checkboxValue,
                            onChanged: (value) {
                              setState(() {
                                checkboxValue = !checkboxValue;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: TextWidget(
                              text: "anglais - English",
                              color: black,
                              size: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Checkbox(
                            value: checkboxValue,
                            onChanged: (value) {
                              setState(() {
                                checkboxValue = !checkboxValue;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Expanded(
                              child: TextWidget(
                                text: "anglais britanique - British English",
                                color: black,
                                size: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Checkbox(
                            value: checkboxValue,
                            onChanged: (value) {
                              setState(() {
                                checkboxValue = !checkboxValue;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: TextWidget(
                            text: 'Voir plus',
                            color: black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      height: 0.5,
                      width: size.width,
                      color: grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color.fromARGB(255, 138, 136, 136),
                              ),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            backgroundColor: white,
                          ),
                          onPressed: () {},
                          child: TextWidget(
                            text: "Passer pour le moment",
                            color: black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            backgroundColor: black,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, authentificationFinish);
                          },
                          child: TextWidget(
                            text: "Suivant",
                            color: white,
                            size: 16,
                            fontWeight: FontWeight.bold,
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
