import 'package:flutter/material.dart';
import 'package:forca/drawer/widgets/drawerbody_app.dart';
import 'package:forca/drawer/widgets/drawerheader_app.dart';

class DrawerRoute extends StatelessWidget {
  const DrawerRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jogo da Forca",
        ),
        centerTitle: true,
      ),
      body: Container(),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeaderApp(),
            DrawerBodyApp(),
          ],
        ),
      ),
    );
  }
}
