import 'package:flutter/material.dart';

class ChangeNameAlertDialog extends StatelessWidget {
  final String nome;
  final void Function(String) setName;

  const ChangeNameAlertDialog(this.nome, this.setName, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var newNome = nome;

    return AlertDialog(
      title: const Text("Mudar Nome?"),
      content: TextFormField(
        initialValue: nome,
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
            setName(newNome);
            Navigator.pop(context);
          },
          child: const Text("Sim"),
        ),
      ],
    );
  }
}
