import 'dart:async';

import 'package:flutter/material.dart';
import 'package:forca/routes/welcome_route.dart';
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
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WelcomeRoute()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircularImageWidget(
          imgProvider: AssetImage(
            'assets/images/splashscreen.png',
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
}
