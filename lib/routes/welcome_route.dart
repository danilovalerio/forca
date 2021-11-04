import 'package:flutter/material.dart';
import 'package:forca/shared_preferences/app_preferences.dart';

import 'home_route.dart';

class WelcomeRoute extends StatefulWidget {
  const WelcomeRoute({Key? key}) : super(key: key);

  @override
  _WelcomeRouteState createState() => _WelcomeRouteState();
}

class _WelcomeRouteState extends State<WelcomeRoute> {
  bool _checkBoxIsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        ///Double infinity refere-se a largura total do dispositivo
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Bem vindo',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Marcar como lido',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Checkbox(
                        value: this._checkBoxIsChecked,
                        onChanged: (status) {
                          debugPrint("clicou e agora o status é: $status");
                          setState(() {
                            this._checkBoxIsChecked = status!;
                          });
                        }),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () async {
                    AppPreferences.setWelcomeRead(
                        status: this._checkBoxIsChecked);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeRoute()),
                    );
                  },
                  child: Text(
                    'Avançar',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
