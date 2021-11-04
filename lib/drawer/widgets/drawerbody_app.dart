import 'package:flutter/material.dart';

class DrawerBodyApp extends StatelessWidget {
  DrawerBodyApp({Key? key}) : super(key: key);

  final Color g1 = Colors.green[200] ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.green[100] ?? Colors.white,
            Colors.green[400] ?? Colors.white,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0,1.0],
        )
      ),
    ));
  }
}
