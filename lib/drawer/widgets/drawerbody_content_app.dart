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
                backgroundImage: AssetImage('assets/images/drawer/words_list.png'),
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
                ListTile(
                  contentPadding: EdgeInsets.only(left: 62.0),
                  trailing: Icon(Icons.arrow_forward),
                  title: Text('Novas Palavras'),
                  subtitle: Text('Vamos inserir novas palavras?'),
                  onTap: () {},
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 62.0),
                  trailing: Icon(Icons.arrow_forward),
                  title: Text('Palavras existentes'),
                  subtitle: Text('Vamos as palavras já temos?'),
                  onTap: () {},
                ),
              ],
            ),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(left: 6.0),
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/drawer/icon_play.png'),
          ),
          trailing: Icon(Icons.arrow_forward),
          title: Text('Jogar'),
          subtitle: Text('Começar a diversão'),
          onTap: () {},
        ),
        ListTile(
          contentPadding: EdgeInsets.only(left: 6.0),
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/drawer/score_icon.png'),
          ),
          trailing: Icon(Icons.arrow_forward),
          title: Text('Score'),
          subtitle: Text('Relação dos top 10'),
          onTap: () {},
        ),
      ],
    );
  }
}
