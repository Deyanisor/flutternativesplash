import 'package:flutter/material.dart';

import 'login_screen.dart';

class PlatoPrincipal extends StatefulWidget {
  static const String id = 'PlatoPrincipal';

  @override
  _PlatoPrincipalState createState() => _PlatoPrincipalState();
}

class _PlatoPrincipalState extends State<PlatoPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 60),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepOrangeAccent,
                    Colors.deepOrange,
                  ],
                ),
              ),
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "Prueba nuestra",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                          backgroundColor: Colors.red,
                        ),
                      ),
                      Text(
                        'Especilidad',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Bandeja ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.red,
                            )),
                        TextSpan(
                            text: ' monta\u00f1era',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            ))
                      ])),
                      Image.network(
                          "https://elrancherito.com.co//wp-content//uploads//2020//06//FotosWeb_Rancherito-04-600x600.png"),
                      Text(
                        'Con frijo, carne asada, carne molida o chicharon, huevo frito, papa, yuca, ensalada, tajada de madura, arroz y arepa',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'precio 21400 pesos',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Material(
                          elevation: 5.0,
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15.0),
                          child: MaterialButton(
                            onPressed: () {
                              //Go to login screen.
                              Navigator.pushNamed(context, LoginScreen.id);
                            },
                            minWidth: 400.0,
                            height: 42.0,
                            child: Text(
                              'Comenzar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
