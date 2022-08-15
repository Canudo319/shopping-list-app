import 'package:flutter/material.dart';

class ChangePrimaryColor extends StatelessWidget {
  final void Function(ThemeData) _setThemeData;

  const ChangePrimaryColor(this._setThemeData, {Key? key}) : super(key: key);

  List<ElevatedButton> _getAllColors(BuildContext context) {
    const colors = [
      Colors.indigoAccent,
      Colors.blue,
      Colors.cyan,
      Colors.green,
      Colors.lightGreen,
      Colors.greenAccent,
      Colors.red,
      Colors.pink,
      Colors.purple,
      Colors.orange,
      Colors.brown,
      Colors.grey,
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
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: [..._getAllColors(context)],
      ),
    );
  }
}
