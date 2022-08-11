import 'package:flutter/material.dart';

class ChangePrimaryColor extends StatelessWidget {
  const ChangePrimaryColor({Key? key}) : super(key: key);

  List<ElevatedButton> _getAllColors() {
    const colors = [
      Colors.blue,
      Colors.cyan,
      Colors.orange,
      Colors.grey,
      Colors.black,
      Colors.white,
      Colors.red,
      Colors.purple,
      Colors.indigoAccent,
      Colors.green,
      Colors.lightGreen,
      Colors.greenAccent,
    ];

    List<ElevatedButton> buttons = [];
    for (var color in colors) {
      buttons.add(
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
          onPressed: () {},
          child: const Text(""),
        ),
      );
    }

    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mudar Cor?"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [..._getAllColors()],
      ),
    );
  }
}
