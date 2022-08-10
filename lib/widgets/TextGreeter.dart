import 'package:flutter/material.dart';

class TextGreeter extends StatelessWidget {
  TextGreeter({Key? key}) : super(key: key);

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
  Widget build(BuildContext context) {
    return Text(
      greeting,
      style: const TextStyle(
        fontSize: 12,
      ),
    );
  }
}
