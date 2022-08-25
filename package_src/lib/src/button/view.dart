import 'package:flutter/material.dart';
import 'package:fluui/src/style.dart';
import 'package:fluui/src/global.dart';

/// 按钮类型
enum FluuiButtonShap {
  round, // 圆角
  circle, // 圆形
}

/// 按钮尺寸
enum FluuiButtonSize {
  small, // 小号
  common, // 标准
  large, // 大号
}

class FluuiButton extends StatelessWidget {
  final double? width;

  final double? height;

  final String title;

  final void Function()? onPressed;

  final bool isGhost;

  final bool fluid;

  final bool loose;

  final EdgeInsets? margin;

  final EdgeInsets? padding;

  final double? radiusSize;

  final ThemeType themeType;

  final FluuiButtonSize size;

  final LinearGradient? gradient;

  const FluuiButton(
      {Key? key,
      required this.title,
      this.width,
      this.height,
      this.onPressed,
      this.isGhost = false,
      this.fluid = false,
      this.loose = false,
      this.radiusSize,
      this.themeType = ThemeType.primary,
      this.gradient,
      this.size = FluuiButtonSize.common,
      this.margin,
      this.padding})
      : super(key: key);

  Color _getColorByThemeType(ThemeType themetype) {
    switch (themetype) {
      case ThemeType.primary:
        return FluuiStyle.primaryColor;
      case ThemeType.success:
        return FluuiStyle.successColor;
      case ThemeType.complete:
        return FluuiStyle.completeColor;
      case ThemeType.danger:
        return FluuiStyle.dangerColor;
      case ThemeType.info:
        return FluuiStyle.infoColor;
      case ThemeType.warn:
        return FluuiStyle.warningColor;
      default:
        return FluuiStyle.primaryColor;
    }
  }

  /// 获取圆角尺寸
  /// 根据不同的 size
  BorderRadius _getBorderRadius() {
    switch (size) {
      case FluuiButtonSize.common:
        return FluuiStyle.borderRadiusBase;
      case FluuiButtonSize.small:
        return FluuiStyle.borderRadiusSmall;
      case FluuiButtonSize.large:
        return FluuiStyle.borderRadiusLarge;
      default:
        return FluuiStyle.borderRadiusBase;
    }
  }

  double? _getButtonWidth() {
    if (fluid) return double.infinity;
    if (loose) return 300;
    if (width != null) return width!;
    return null;
  }

  double? _getButtonHeight() {
    if (height != null) return height!;
    switch (size) {
      case FluuiButtonSize.common:
        return FluuiStyle.sizeBase;
      case FluuiButtonSize.small:
        return FluuiStyle.sizeSm;
      case FluuiButtonSize.large:
        return FluuiStyle.sizeLg;
      default:
        return FluuiStyle.sizeBase;
    }
  }

  EdgeInsets? _getButtonPadding() {
    if (padding != null) return padding;
    switch (size) {
      case FluuiButtonSize.common:
        return FluuiStyle.paddingBase;
      case FluuiButtonSize.small:
        return FluuiStyle.paddingSm;
      case FluuiButtonSize.large:
        return FluuiStyle.paddingLg;
      default:
        return FluuiStyle.paddingBase;
    }
  }

  EdgeInsets? _getButtonMargin() {
    if (margin != null) return margin;
    if (fluid) return const EdgeInsets.fromLTRB(10, 0, 10, 0);
    return null;
  }

  double? _getButtonFontSize() {
    switch (size) {
      case FluuiButtonSize.common:
        return FluuiStyle.fontSizeBase;
      case FluuiButtonSize.small:
        return FluuiStyle.fontSizeSm;
      case FluuiButtonSize.large:
        return FluuiStyle.fontSizeLg;
      default:
        return FluuiStyle.fontSizeBase;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: _getBorderRadius(),
        child: Container(
          margin: _getButtonMargin(),
          height: _getButtonHeight(),
          width: _getButtonWidth(),
          padding: _getButtonPadding(),
          decoration: BoxDecoration(
              gradient: isGhost || gradient == null ? null : gradient,
              color: gradient == null && !isGhost
                  ? _getColorByThemeType(themeType)
                  : null,
              borderRadius: _getBorderRadius(),
              border:
                  isGhost ? Border.all(color: FluuiStyle.primaryColor) : null),
          child: TextButton(
            style: TextButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(borderRadius: _getBorderRadius()),
              padding: EdgeInsets.zero,
            ),
            onPressed: onPressed,
            // highlightColor: Colors.yellow,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: _getButtonFontSize(),
                  color:
                      isGhost ? _getColorByThemeType(themeType) : Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
