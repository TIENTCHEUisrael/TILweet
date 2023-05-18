import 'package:flutter/material.dart';
import 'package:twitter_clone/components/widgets/textWidget.dart';
import 'package:twitter_clone/constant/colors.dart';

class AuthPage2 extends StatefulWidget {
  const AuthPage2({super.key});

  @override
  State<AuthPage2> createState() => _AuthPage2State();
}

class _AuthPage2State extends State<AuthPage2> {
  bool _isfinish = false;
  final _formKey = GlobalKey<FormState>();
  final nom = TextEditingController();
  final telemail = TextEditingController();
  final naissance = TextEditingController();

  void zero() {
    setState(() {
      nom.clear();
      telemail.clear();
      naissance.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
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
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 0, top: 15),
                    child: TextWidget(
                      text: "Créer votre Compte",
                      color: black,
                      size: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: TextFormField(
                        controller: nom,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Nom et prenom',
                          hintText: 'Nom et prénom',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "S'il vous plait entrer votre Nom et prenom";
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextWidget(
                            text: "0/50",
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        controller: telemail,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Téléphone ou email',
                          hintText: 'Téléphone ou email',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "S'il vous plait entrer votre Téléphone ou email";
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: TextFormField(
                        controller: naissance,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Date de naissance',
                          hintText: 'Date de naissance',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "S'il vous plait entrer votre Date de naissance";
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {
                                  final form = _formKey.currentState;
                                  if (form!.validate()) {
                                    setState(() {
                                      _isfinish = true;
                                    });
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(9),
                                  child: TextWidget(
                                    text: "Suivant",
                                    size: 16,
                                    color: _isfinish ? white : grey,
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
