import 'package:flutter/material.dart';
import 'package:flutternativesplash/screens/login_screen.dart';
import 'package:flutternativesplash/screens/plato_principal.dart';
import 'package:flutternativesplash/screens/registration_screens.dart';
import 'package:flutternativesplash/screens/segundo_splash.dart';
import 'package:provider/provider.dart';

import 'network/api_service.dart';

void main() {
  //_setuplogging();
  runApp(MyApp());
}

//void _setuplogging() {
//Logger.root.level = Level.ALL;
//Logger.root.onRecord.listen(
//  (rec) => {print("${rec.level.name}: ${rec.time}:${rec.message}")});
//}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return Provider(
      create: (context) => ApiService.create(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: theme.copyWith(
            brightness: Brightness.light,
            primaryColor: Colors.deepOrange,
            colorScheme:
                theme.colorScheme.copyWith(secondary: Colors.orangeAccent),
          ),
          initialRoute: PlatoPrincipal.id,
          routes: {
            PlatoPrincipal.id: (context) => PlatoPrincipal(),
            Splash.id: (context) => Splash(),
            LoginScreen.id: (context) => LoginScreen(),
            RegistrationScreen.id: (context) => RegistrationScreen(),
          }),
    );
  }
}
