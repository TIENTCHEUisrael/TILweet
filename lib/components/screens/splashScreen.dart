import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:twitter_clone/components/screens/Authentification/authentificationPage1.dart';
import 'package:twitter_clone/components/widgets/textWidget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3)).then(
      (value) => Navigator.pushReplacement(
        context,
        CupertinoPageRoute(
          builder: (_) {
            return AuthPage1();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SpinKitSpinningCircle(
              size: 70,
              color: Colors.blue,
            ),
            SizedBox(
              height: 15,
            ),
            TextWidget(
              text: "TILweet",
              color: Colors.lightBlueAccent,
              size: 30,
              fontWeight: FontWeight.bold,
            ),
            TextWidget(
              text: "Chargement...",
              color: Colors.black,
              size: 10,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
