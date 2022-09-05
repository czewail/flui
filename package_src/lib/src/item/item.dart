import 'package:flutter/material.dart';

class FluuiItem extends StatelessWidget {
  final String? title;

  final Widget? child;

  final Function? onPress;

  final String? message;

  final IconData? icon;

  final double? height;

  final Widget? prefix;

  final Widget? media;

  final bool showBorder;

  const FluuiItem(
      {Key? key,
      this.child,
      this.title,
      this.onPress,
      this.message,
      this.prefix,
      this.media,
      this.icon,
      this.showBorder = true,
      this.height})
      : super(key: key);

  _getChildren() {
    List<Widget> widgets = [];
    if (prefix != null) {
      widgets.add(Padding(
        padding: const EdgeInsets.only(right: 7),
        child: prefix!,
      ));
    }
    if (title != null) {
      widgets.add(Expanded(
          child: Text(
        title!,
        style: const TextStyle(fontSize: 15.0),
      )));
    }
    if (message != null) {
      widgets.add(Text(
        message!,
        style: const TextStyle(color: Colors.grey, fontSize: 13),
      ));
    }
    if (media != null) {
      widgets.add(media!);
    }
    if (icon != null) {
      widgets.add(Icon(
        icon!,
        color: Colors.grey,
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    if (child != null) return child!;

    return Column(
      children: [
        Container(
          height: height,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              child: GestureDetector(
                  onTap: () {
                    onPress != null && onPress!();
                  },
                  child: Row(children: _getChildren()))),
        ),
        showBorder
            ? const Divider(
                height: 1.0,
              )
            : Container()
      ],
    );
  }
}
