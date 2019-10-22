import 'package:figoh_project/UI/login_page.dart';
import 'package:figoh_project/UI/main_ui.dart';
import 'package:figoh_project/UI/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Constants/constants.dart';
import 'UI/Widgets/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Classified App Clone',
      theme: ThemeData(primaryColor: Colors.green[200]),
      routes: <String, WidgetBuilder>{
        MAIN_UI: (BuildContext context) => MainUI(),
        SPLASH_SCREEN: (BuildContext context) => AnimatedSplashScreen(),
        SIGN_UP: (BuildContext context) => SignUpScreen(),
        SIGN_IN: (BuildContext context) => SignInPage(),
      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}
