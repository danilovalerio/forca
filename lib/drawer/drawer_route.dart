import 'package:flutter/material.dart';

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
            DrawerHeader(
              padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/drawer/drawer_header.png'),
                  ),
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.transparent),
                  accountName: Text(
                    "Danilo Valerio da Silva",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  accountEmail: Text(
                    "danilo@user.com",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/splashscreen.jpg'),
                  ),
                  otherAccountsPictures: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/splash_ajuste.jpg'),
                    )
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
