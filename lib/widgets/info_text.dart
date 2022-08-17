import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String text;

  const InfoText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 22,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
