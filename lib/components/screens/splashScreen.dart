import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:twitter_clone/components/screens/homePages/homeScreen.dart';
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
            return HomeScreen();
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
          children: [
            TextWidget(
              text: "TILweet",
              size: 35,
              color: Colors.blue,
            ),
            SizedBox(
              height: 30,
            ),
            SpinKitSpinningCircle(
              size: 50,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
