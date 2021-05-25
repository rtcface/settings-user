import 'package:flutter/material.dart';
import 'package:userpreferences/src/shared_prefs/user_preferences.dart';
import 'package:userpreferences/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final preferences = new UserPreferences();
  //const HomePage({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    this.preferences.lastPage = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (preferences.colorSecundario) ? Colors.teal : Colors.blue,
        title: Text('Preferencias de Usuarios'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario: ${ preferences.colorSecundario }'),
          Divider(),
          Text('Genero: ${ preferences.genero }'),
          Divider(),
          Text('Nombre de usuario:${ preferences.nombreUsuario }'),
          Divider(),
        ],
      ),
    );
  }
}