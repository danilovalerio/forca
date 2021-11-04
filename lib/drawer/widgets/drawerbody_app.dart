import 'package:flutter/material.dart';

class DrawerBodyApp extends StatelessWidget {
  final Widget child;

  DrawerBodyApp({Key? key, required this.child}) : super(key: key);

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
      child: this.child,
    ));
  }
}
