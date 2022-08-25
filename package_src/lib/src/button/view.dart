import 'package:flutter/material.dart';
import 'package:fluui/src/style.dart';
import 'package:fluui/src/global.dart';

class FluuiButton extends StatelessWidget {
  final double? width;

  final double? height;

  final String title;

  final void Function()? onPressed;

  final bool isGhost;

  final bool fluid;

  final EdgeInsets margin;

  final EdgeInsets padding;

  final double radiusSize;

  final ThemeType themeType;

  final LinearGradient? gradient;

  const FluuiButton(
      {Key? key,
      required this.title,
      this.width,
      this.height,
      this.onPressed,
      this.isGhost = false,
      this.fluid = false,
      this.radiusSize = 2,
      this.themeType = ThemeType.primary,
      this.gradient,
      this.margin = const EdgeInsets.fromLTRB(10, 0, 10, 0),
      this.padding = const EdgeInsets.fromLTRB(2, 5, 2, 5)})
      : super(key: key);

  Color _getColorByThemeType(ThemeType themetype) {
    switch (themetype) {
      case ThemeType.primary:
        return FluuiStyle.primaryColor;
      default:
        return FluuiStyle.primaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radiusSize),
        child: Container(
          margin: margin,
          padding: padding,
          height: height,
          width: fluid ? double.infinity : null,
          decoration: BoxDecoration(
              gradient: isGhost ? null : gradient,
              color: _getColorByThemeType(themeType),
              // : LinearGradient(colors: [
              //     // const Color(0xFF4776E6),
              //     FluuiStyle.primaryColor,
              //     FluuiStyle.primaryDarkColor
              //     // Color(0xFF8E54E9),
              //   ]),
              borderRadius: BorderRadius.circular(radiusSize),
              border:
                  isGhost ? Border.all(color: FluuiStyle.primaryColor) : null),
          child: TextButton(
            style: TextButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radiusSize)),
            ),
            onPressed: onPressed,
            // highlightColor: Colors.yellow,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 14,
                  color: isGhost ? const Color(0xFF8E54E9) : Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
