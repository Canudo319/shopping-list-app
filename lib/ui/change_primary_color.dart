import 'package:flutter/material.dart';

class ChangePrimaryColor extends StatelessWidget {
  final void Function(ThemeData) _setThemeData;

  const ChangePrimaryColor(this._setThemeData, {Key? key}) : super(key: key);

  List<ElevatedButton> _getAllColors(BuildContext context) {
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
          onPressed: () {
            _setThemeData(ThemeData(
              primaryColor: color,
            ));
            Navigator.pop(context);
          },
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
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [..._getAllColors(context)],
      ),
    );
  }
}
