import 'package:flutter/material.dart';
import 'package:userpreferences/src/pages/home_page.dart';
import 'package:userpreferences/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          //Items from menu
          ListTile(
            leading: Icon( Icons.pages, color: Colors.blue ),
            title: Text('Inicio'),
            onTap: (){
              Navigator.pushReplacementNamed( context, HomePage.routeName );
            },
          ),
          ListTile(
            leading: Icon( Icons.people, color: Colors.blue ),
            title: Text('Cuenta'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon( Icons.people, color: Colors.blue ),
            title: Text('Personas'),
            onTap: (){
              
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue ),
            title: Text('Ajustes'),
            onTap: (){
              //cerrar menu
              //Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            }
          )
        ],
        
      ),
    );
  }
}