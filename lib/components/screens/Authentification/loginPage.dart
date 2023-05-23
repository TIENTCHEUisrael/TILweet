import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/colors.dart';
import '../../widgets/textWidget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool ispasswordStep = false;
  final _formKey = GlobalKey<FormState>();
  final __formKey = GlobalKey<FormState>();
  int currentStep = 0;

  @override
  void initState() {
    super.initState();
    zero();
  }

  @override
  void dispose() {
    super.dispose();
    username.dispose();
    password.dispose();
  }

  zero() {
    username.clear();
    password.clear();
  }

  continueStep() {
    if (currentStep < 1) {
      setState(() {
        currentStep = currentStep + 1;
        ispasswordStep = true;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1;
        ispasswordStep = false;
      });
    }
  }

  Widget controlsBuilder(context, details) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: !ispasswordStep ? () {} : details.onStepCancel,
          child: Expanded(
            child: TextWidget(
              text: !ispasswordStep ? 'Mot de passe oubliez?' : 'Cancel',
              color: black,
              size: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: details.onStepContinue,
          child: TextWidget(
            text: 'Suivant',
            color: white,
          ),
        ),
      ],
    );
  }

  // onStepTapped(int value) {
  //   setState(() {
  //     currentStep = value;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: BackButton(color: black),
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
      body: Stepper(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        physics: const ClampingScrollPhysics(),
        type: StepperType.horizontal,
        elevation: 0,
        currentStep: currentStep,
        onStepContinue: continueStep,
        onStepCancel: cancelStep,
        controlsBuilder: controlsBuilder,
        //onStepTapped: onStepTapped,
        steps: [
          Step(
            title: TextWidget(
              text: 'Username/email',
              color: black,
            ),
            content: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Pour commencer entrez votre adresse email ou votre @nomdutilisateur",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Form(
                      key: _formKey,
                      child: Container(
                        margin: const EdgeInsets.only(top: 25),
                        child: TextFormField(
                          controller: username,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Username ou email',
                            hintText: 'Username ou email',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "S'il vous plait entrer votre username";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            isActive: currentStep >= 0,
            state: currentStep >= 0 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: TextWidget(
              text: 'Password',
              color: black,
            ),
            content: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Pour commencer entrez votre adresse email ou votre @nomdutilisateur",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Form(
                      key: __formKey,
                      child: Container(
                        margin: const EdgeInsets.only(top: 25),
                        child: TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Password...',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "S'il vous plait entrer votre username";
                            }
                            return null;
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            isActive: currentStep >= 1,
            state: currentStep >= 1 ? StepState.complete : StepState.disabled,
          )
        ],
      ),
    );
  }
}
