import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final void Function() func;

  const AddButton(this.func, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).primaryColor,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(14),
      ),
      child: const Text(
        "+",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
