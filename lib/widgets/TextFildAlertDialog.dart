import 'package:flutter/material.dart';

class TextFildAlertDialog extends StatelessWidget {
  final String nome;

  const TextFildAlertDialog(this.nome, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Mudar Nome?"),
      content: TextFormField(
        initialValue: nome,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text("Não"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Sim"),
        ),
      ],
    );
  }
}
