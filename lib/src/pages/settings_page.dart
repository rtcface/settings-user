import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:userpreferences/src/shared_prefs/user_preferences.dart';
import 'package:userpreferences/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';
  const SettingsPage({Key ?key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final preferences = new UserPreferences();
  bool _colorSecundario = false;
  int _genero = 1;
  //String _nombre = 'Julian';
  TextEditingController _textController = new TextEditingController();

  @override
  void initState() {    
    super.initState();  
    this.preferences.lastPage = SettingsPage.routeName;
    this._genero = this.preferences.genero;
    this._colorSecundario = this.preferences.colorSecundario;
    this._textController = new TextEditingController(text: preferences.nombreUsuario);
  } 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (preferences.colorSecundario) ? Colors.teal : Colors.blue,
        title: Text('Ajustes'),
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text( 'Settings', style: TextStyle( fontSize: 40.5,fontWeight: FontWeight.bold ),  ),
          ),
          Divider(),
          SwitchListTile(
            value: this._colorSecundario,
            title: Text('Color Secundario'),
            onChanged: ( value ){
              setState(() {
                this._colorSecundario = value;
                preferences.colorSecundario = value;
              });
            },
            ),
          RadioListTile(
            value: 1,
            title: Text('Masculino'),
            groupValue: this._genero,
            onChanged: setSelectRadio
            ),
          RadioListTile(
            value: 2,
            title: Text('Femenino'), 
            groupValue: this._genero,
            onChanged: setSelectRadio
            ),
          Divider(),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre del usuario propietario del telefono'
              ),
              onChanged: ( value ){
                preferences.nombreUsuario = value;
              },
              )
          )
        ],
      )
    );
  }

  Future<void> setSelectRadio( value ) async {
            //SharedPreferences preferences = await SharedPreferences.getInstance();
           //references.setInt('genero', value);
            preferences.genero=value;
            setState(() {
            this._genero = value as int;               
            });
          }
}