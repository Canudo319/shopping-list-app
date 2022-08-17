import 'package:flutter/material.dart';

class AlertDialogEmptyText extends StatelessWidget {
  final String text;
  final BuildContext context;

  AlertDialogEmptyText.show(this.text, this.context, {Key? key})
      : super(key: key) {
    showDialog(
      context: context,
      builder: (_) => AlertDialogEmptyText(text, context),
    );
  }

  const AlertDialogEmptyText(this.text, this.context, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(text),
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
