import 'package:flutter/material.dart';

class DrawerBodyContentApp extends StatelessWidget {
  const DrawerBodyContentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTileTheme(
          contentPadding: EdgeInsets.only(left: 6.0),
          child: ExpansionTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/drawer/words_list.png'),
            ),
            title: Text(
              "Base de Palavras",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            onExpansionChanged: null,
            children: <Widget>[
              _createListTile(
                  insetsLeft: 62.0,
                  titleText: 'Novas Palavras',
                  subtitleText: 'Vamos inserir Palavras?'),
              _createListTile(
                  insetsLeft: 62.0,
                  titleText: 'Palavras existentes',
                  subtitleText: 'Vamos ver as palavras que temos?'),
            ],
          ),
        ),
        _createListTile(
          titleText: 'Jogar',
          subtitleText: 'Começar a diversão',
          imageName: "icon_play.png",
        ),
        _createListTile(
          titleText: 'Score',
          subtitleText: 'Relação dos top 10',
          imageName: "score_icon.png",
        ),
      ],
    );
  }

  ///Os listTiles tem muita coisa em comum então vamos tirar a redundância com essa função
  ListTile _createListTile({
    insetsLeft = 6.0,
    String imageName = "",
    required String titleText,
    required String subtitleText,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: insetsLeft),
      leading: imageName.isNotEmpty
          ? CircleAvatar(
              backgroundImage: AssetImage("assets/images/drawer/$imageName"))
          : null,
      trailing: Icon(Icons.arrow_forward),
      title: Text(titleText),
      subtitle: Text(subtitleText),
      onTap: () {},
    );
  }
}
