import 'package:flutter/material.dart';

import 'alert_dialog_empty_text.dart';

class ChangeNameAlertDialog extends StatelessWidget {
  final String nomeInicial;
  final void Function(String) setName;

  const ChangeNameAlertDialog(this.nomeInicial, this.setName, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var newNome = nomeInicial;

    return AlertDialog(
      title: const Text("Mudar Nome?"),
      content: TextFormField(
        initialValue: nomeInicial,
        style: const TextStyle(
          fontSize: 20,
        ),
        onChanged: (String s) {
          newNome = s;
        },
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Não"),
        ),
        TextButton(
          onPressed: () {
            if (newNome.isEmpty) {
              AlertDialogEmptyText.show("Nome não pode ser vázio", context);
            } else {
              setName(newNome);
              Navigator.pop(context);
            }
          },
          child: const Text("Sim"),
        ),
      ],
    );
  }
}
