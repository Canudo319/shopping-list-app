import 'package:flutter/material.dart';

import 'change_name_alert_dialog.dart';

class TextButtonSetName extends StatelessWidget {
  final String nomeInicial;
  final void Function(String) setName;

  const TextButtonSetName({
    required this.nomeInicial,
    required this.setName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => ChangeNameAlertDialog(nomeInicial, setName),
        );
      },
      child: Text(
        nomeInicial,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
