import 'package:flutter/material.dart';

import 'TextFieldAlertDialog.dart';

class GreeterWidget extends StatefulWidget {
  const GreeterWidget({Key? key}) : super(key: key);

  @override
  State<GreeterWidget> createState() => _GreeterWidgetState();
}

class _GreeterWidgetState extends State<GreeterWidget> {
  var nome = "Cainã Contarin";

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

  void _setName(String newName) {
    setState(() {
      nome = newName;
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
              builder: (_) => TextFieldAlertDialog(nome, _setName),
            );
          },
          child: Text(
            nome,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
