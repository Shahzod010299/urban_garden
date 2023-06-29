import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:urban_garden/screens/swipe_page.dart';
import 'package:urban_garden/utils/size.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      title: Text(
        "GROW YOUR CROP ON YOUR PHONE",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator: SwipePage(),
      durationInSeconds: 4,
      logo: Image.asset('assets/images/urban.png',width: getW(context) * 0.9,),
    );
  }
}