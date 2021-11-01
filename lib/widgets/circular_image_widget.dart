import 'package:flutter/material.dart';

///Widget que criar uma imagem circular
class CircularImageWidget extends StatelessWidget {

  final ImageProvider imgProvider;
  final double width;
  final double heigth;
  final Color borderColor;
  final double borderWidth;

  CircularImageWidget({
    required this.imgProvider,
    this.width = 300,
    this.heigth = 300,
    this.borderColor = Colors.black,
    this.borderWidth = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.heigth,
      width: this.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: this.borderColor,
          width: this.borderWidth,
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: this.imgProvider,
        )
      ),
    );
  }
}
