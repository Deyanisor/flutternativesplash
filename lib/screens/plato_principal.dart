import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternativesplash/network/Model/restaurant_model.dart';
import 'package:flutternativesplash/network/api_service.dart';
import 'package:provider/provider.dart';

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
      body: _especialidadFuture(context),
    );
  }

  FutureBuilder _especialidadFuture(BuildContext context) {
    return FutureBuilder<EspecilidadModel>(
      future: Provider.of<ApiService>(context, listen: false).getTasks(),
      builder:
          (BuildContext context, AsyncSnapshot<EspecilidadModel> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Container(
                child: Center(
              child: Text("Something wrond"),
            ));
          }
          final especial = snapshot.data;
          return Stack(
            children: <Widget>[
              Transform.translate(
                  offset: Offset(0, -100),
                  child: Center(
                      child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, top: 260),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 30),
                            child: Column(children: <Widget>[
                              Text(
                                'Especilidad',
                                style: TextStyle(
                                    color: Colors.deepOrange, fontSize: 30),
                              ),
                              Text(
                                especial!.datos!.nombre.toString(),
                                style: TextStyle(
                                    color: Colors.deepOrange, fontSize: 30),
                              ),
                              Image.network(
                                especial.datos!.url_foto!,
                                height: 200,
                              ),
                              Text(especial.datos!.descripcion.toString()),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: 'Precio: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black,
                                    )),
                                TextSpan(
                                  text: especial.datos!.precio.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ])),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Material(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  elevation: 5.0,
                                  child: MaterialButton(
                                      onPressed: () {
                                        //Go to login screen.
                                        Navigator.pushNamed(
                                            context, LoginScreen.id);
                                      },
                                      //Implement login functionality.
                                      minWidth: 200.0,
                                      height: 42.0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Iniciar Sesión',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ]),
                          ),
                        )
                      ],
                    ),
                  )))
            ],
          );
        } else {
          return Center(
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 60),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orangeAccent, Colors.deepOrange])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/logo.png",
                      height: 200,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CircularProgressIndicator(),
                    Text("Cargando"),
                  ],
                )),
          );
        }
      },
    );
  }
}
