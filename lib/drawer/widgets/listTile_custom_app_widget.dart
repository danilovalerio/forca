import 'package:flutter/material.dart';

class ListTileCustomAppWidget extends StatelessWidget {
  final EdgeInsets contentPadding;
  final String imgNameType;
  final String titleText;
  final String subTitleText;

  const ListTileCustomAppWidget({
    Key? key,
    this.contentPadding =
        const EdgeInsets.only(left: 54.0, top: 0.0, bottom: 8.0),
    this.imgNameType = "",
    required this.titleText,
    required this.subTitleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding,
      child: Row(
        children: <Widget>[
          (imgNameType.isEmpty)
              ? Container(
                  width: 0,
                )
              : Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/drawer/$imgNameType"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleText),
                Text(
                  subTitleText,
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            child: Icon(
              Icons.arrow_forward,
              color: Colors.black38,
            ),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
