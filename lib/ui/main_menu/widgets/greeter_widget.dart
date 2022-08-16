import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list_app/widgets/text_button_setname.dart';

import 'text_greeter.dart';

class GreeterWidget extends StatefulWidget {
  const GreeterWidget({Key? key}) : super(key: key);

  @override
  State<GreeterWidget> createState() => _GreeterWidgetState();
}

class _GreeterWidgetState extends State<GreeterWidget> {
  var nome = "";

  Future<String> _getNameFromSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final startupName = prefs.getString("prefName");
    if (startupName == null) {
      return "Seu Nome";
    }
    return startupName;
  }

  Future<void> _setNameFromSharedPref(String nome) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("prefName", nome);
  }

  Future<void> _startupName() async => _setName(await _getNameFromSharedPref());

  @override
  void initState() {
    super.initState();
    _startupName();
  }

  void _setName(String newName) {
    setState(() {
      nome = newName;
      _setNameFromSharedPref(nome);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextGreeter(),
        TextButtonSetName(
          nomeInicial: nome,
          setName: _setName,
        ),
      ],
    );
  }
}
