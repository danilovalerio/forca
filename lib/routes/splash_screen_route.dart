import 'dart:async';

import 'package:flutter/material.dart';
import 'package:forca/drawer/drawer_route.dart';
import 'package:forca/routes/home_route.dart';
import 'package:forca/routes/welcome_route.dart';
import 'package:forca/shared_preferences/app_preferences.dart';
import '../widgets/circular_image_widget.dart';

class SplashScreenRoute extends StatefulWidget {
  const SplashScreenRoute({Key? key}) : super(key: key);

  @override
  _SplashScreenRouteState createState() => _SplashScreenRouteState();
}

class _SplashScreenRouteState extends State<SplashScreenRoute> {
  @override
  void initState() {
    super.initState();

    ///Temporizador que após 3 segundos promoverá a navegação para uma nova rota
    Timer(Duration(seconds: 2), () {

      ///Lê o welcomeRead e passa o result para navegacao assincrono nao recomendado
      // AppPreferences.getWelcomeRead().then((status) {
      //   _whereToNavigate(welcomeRead: status);
      // });
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DrawerRoute()));

      // WidgetsBinding.instance!.addPostFrameCallback((_) {
      //   AppPreferences.getWelcomeRead().then((status) {
      //     _whereToNavigate(welcomeRead: status);
      //   });
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircularImageWidget(
          imgProvider: AssetImage(
            'assets/images/iconhangman.png',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0, bottom: 25),
          child: Text(
            'Carregando...',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 100),
          child: LinearProgressIndicator(
            backgroundColor: Colors.blue[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue[900]),
          ),
        ),
      ],
    );
  }

  ///Metodo de navegacao que recebe o welcomeRead
  _whereToNavigate({required bool welcomeRead}) {
    if (welcomeRead)
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeRoute()));
    else
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomeRoute()));
  }
}
