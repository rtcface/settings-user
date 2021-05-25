
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences{
  // Ninguna de estas propiedades se utiliza
  /*bool _colorSecundario;
  int _genero;
  String _nombre;*/
  static final UserPreferences _instance = new UserPreferences._internal();

  factory UserPreferences() {
    return _instance;
  }

  UserPreferences._internal();

  SharedPreferences? _preferences;
  
  initPreferences() async  {
    this._preferences = await SharedPreferences.getInstance();
  }

  // get y set del genero

  int get genero {
    return this._preferences!.getInt('genero') ?? 1;
  }

  set genero ( int value ) {
     this._preferences!.setInt('genero', value);
  }

 // get y set del colorSecundario

  bool get colorSecundario {
    return this._preferences!.getBool('secundary') ?? false;
  }

  set colorSecundario ( bool value ) {
     this._preferences!.setBool('secundary', value);
  }

  // get y set del nombreUsuario

  String get nombreUsuario {
    return this._preferences!.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario ( String value ) {
     this._preferences!.setString('nombreUsuario', value);
  }

  // get y set del Ultima pagina

  String get lastPage {
    return this._preferences!.getString('lastpage') ?? 'Home';
  }

  set lastPage ( String value ) {
     this._preferences!.setString('lastpage', value);
  }


}
