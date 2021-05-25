import 'package:flutter/material.dart';
import 'package:userpreferences/src/pages/home_page.dart';
import 'package:userpreferences/src/pages/settings_page.dart';
import 'package:userpreferences/src/shared_prefs/user_preferences.dart';
 
void main() { 
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = new UserPreferences();
  preferences.initPreferences();
  
  runApp(MyApp());
  }
 
class MyApp extends StatelessWidget {  
  final preferences = new UserPreferences();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferecias',
      initialRoute: preferences.lastPage,      
      routes: {
        HomePage.routeName     : ( BuildContext context ) => HomePage(),
        SettingsPage.routeName : ( BuildContext context ) => SettingsPage(),
      },
    );
  }
}