import 'package:flutter/material.dart';

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
              showDialog(
                context: context,
                builder: (_) => const _AlertDialogEmptyText(),
              );
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

class _AlertDialogEmptyText extends StatelessWidget {
  const _AlertDialogEmptyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Nome não pode ser vázio"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("OK"),
        ),
      ],
    );
  }
}
