import 'package:flutter/material.dart';
import 'package:flutternativesplash/screens/login_screen.dart';
import 'package:flutternativesplash/screens/registration_screen.dart';
import 'package:flutternativesplash/screens/segundo_splash.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme.copyWith(
          brightness: Brightness.light,
          primaryColor: Colors.deepOrange,
          colorScheme:
              theme.colorScheme.copyWith(secondary: Colors.orangeAccent),
        ),
        initialRoute: Splash.id,
        routes: {
          Splash.id: (context) => Splash(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
        });
  }
}
