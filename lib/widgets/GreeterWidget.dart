import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ChangeNameAlertDialog.dart';

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

  final now = DateTime.now();

  String get greeting {
    String result;
    if (now.hour >= 4 && now.hour < 11) {
      result = "Bom Dia!";
    } else if (now.hour >= 11 && now.hour < 17) {
      result = "Boa Tarde!";
    } else {
      result = "Boa Noite!";
    }
    return result;
  }

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
        Text(
          greeting,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => ChangeNameAlertDialog(nome, _setName),
            );
          },
          child: Text(
            nome,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
