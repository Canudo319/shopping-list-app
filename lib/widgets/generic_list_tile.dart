import 'package:flutter/material.dart';

class GenericListTile extends StatelessWidget {
  final Widget newScreen;
  final String title;
  final String? subtitle;
  final String? trailing;
  final Icon? icone;

  const GenericListTile({
    required this.newScreen,
    required this.title,
    this.subtitle,
    this.trailing,
    this.icone,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => newScreen,
          ),
        );
      },
      leading: SizedBox(
        height: double.infinity,
        child: icone,
      ),
      title: _CustomText(
        text: title,
        fontSize: 28,
      ),
      subtitle: _CustomText(
        text: subtitle ?? "",
        fontSize: 12,
      ),
      trailing: trailing == null
          ? null
          : _CustomText(
              text: trailing ?? "",
              fontSize: 28,
            ),
      tileColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          14.0,
        ),
      ),
    );
  }
}

class _CustomText extends StatelessWidget {
  final String text;
  final double fontSize;

  const _CustomText({required this.text, required this.fontSize, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: false,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.white,
      ),
    );
  }
}
