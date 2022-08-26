import 'package:flutter/material.dart';

class FluuiItem extends StatelessWidget {
  final String? title;

  final Widget? child;

  final Function? onPress;

  final String? message;

  final IconData? icon;

  final double? height;

  const FluuiItem(
      {Key? key,
      this.child,
      this.title,
      this.onPress,
      this.message,
      this.icon,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
