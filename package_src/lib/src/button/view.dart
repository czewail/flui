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
  /// 宽度
  /// 强制设置按钮的宽度
  /// 其他和宽度有关的属性会失效
  final double? width;

  /// 高度
  /// 强制设置按钮高度
  /// 其他和高度有关的按钮会失效
  final double? height;

  final IconData? icon;
  final Color? iconColor;

  /// 按钮文字
  final String title;

  /// 按钮事件
  final void Function()? onPressed;

  /// 是否为幽灵模式
  final bool isGhost;

  /// 流体模式
  /// 会占满整个窗口
  final bool fluid;

  /// 宽松模式
  /// 按钮看起来更大一些
  final bool loose;

  /// 外边距
  final EdgeInsets? margin;

  /// 内边距
  final EdgeInsets? padding;

  /// 圆角大小
  final double? radiusSize;

  /// 主题类型
  final ThemeType themeType;

  /// 按钮大小
  final FluuiButtonSize size;

  /// 渐变色
  final LinearGradient? gradient;

  final ButtonStyle? buttonStyle;

  const FluuiButton(
      {Key? key,
      required this.title,
      this.width,
      this.height,
      this.icon,
      this.iconColor,
      this.onPressed,
      this.isGhost = false,
      this.fluid = false,
      this.loose = false,
      this.radiusSize,
      this.themeType = ThemeType.primary,
      this.gradient,
      this.size = FluuiButtonSize.common,
      this.buttonStyle,
      this.margin,
      this.padding})
      : super(key: key);

  /// 根源主题类型获取按钮颜色
  Color _getBackgroundColor() {
    switch (themeType) {
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

  /// 获取字体颜色
  Color _getFontColor() {
    if (isGhost) return _getBackgroundColor();
    return Colors.white;
  }

  /// 高亮颜色
  Color _getHighlineColor() {
    switch (themeType) {
      case ThemeType.primary:
        return FluuiStyle.primaryLightColor;
      case ThemeType.success:
        return FluuiStyle.successLightColor;
      case ThemeType.complete:
        return FluuiStyle.completeLightColor;
      case ThemeType.danger:
        return FluuiStyle.dangerLightColor;
      case ThemeType.info:
        return FluuiStyle.infoLightColor;
      case ThemeType.warn:
        return FluuiStyle.warningLightColor;
      default:
        return FluuiStyle.primaryLightColor;
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

  /// 计算按钮宽度
  double? _getButtonWidth() {
    if (fluid) return double.infinity;
    if (loose) return 300;
    if (width != null) return width!;
    return null;
  }

  /// 计算按钮高度
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

  /// 即算按钮内边距
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

  /// 计算按钮外边距
  EdgeInsets? _getButtonMargin() {
    if (margin != null) return margin;
    if (fluid) return const EdgeInsets.fromLTRB(10, 0, 10, 0);
    return null;
  }

  /// 计算按钮文字大小
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
          // padding: _getButtonPadding(),
          decoration: BoxDecoration(
              gradient: isGhost || gradient == null ? null : gradient,
              color:
                  gradient == null && !isGhost ? _getBackgroundColor() : null,
              borderRadius: _getBorderRadius(),
              border:
                  isGhost ? Border.all(color: FluuiStyle.primaryColor) : null),
          child: TextButton(
              style: buttonStyle ??
                  ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: _getBorderRadius())),
                    padding: MaterialStateProperty.all(_getButtonPadding()),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    overlayColor:
                        MaterialStateProperty.all(_getHighlineColor()),
                    splashFactory: NoSplash.splashFactory,
                  ),

              // style: TextButton.styleFrom(
              //   tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              //   primary: Colors.transparent,
              //   shape: RoundedRectangleBorder(borderRadius: _getBorderRadius()),
              //   padding: EdgeInsets.zero,
              // ),
              onPressed: onPressed ?? () {},
              // highlightColor: Colors.yellow,
              child: icon != null
                  ? Text.rich(TextSpan(
                      style: TextStyle(
                          fontSize: _getButtonFontSize(),
                          color: _getFontColor()),
                      children: [
                          WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(right: 2),
                                child: Icon(
                                  icon,
                                  size: _getButtonFontSize(),
                                  color: iconColor ?? _getFontColor(),
                                ),
                              ),
                              alignment: PlaceholderAlignment.middle),
                          TextSpan(text: title)
                        ]))
                  : Text(
                      title,
                      style: TextStyle(
                          fontSize: _getButtonFontSize(),
                          color: _getFontColor()),
                    )),
        ),
      ),
    );
  }
}
