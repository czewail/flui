import 'package:flutter/material.dart';
import 'package:fluui/fluui.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FluuiButton(
              title: 'Danger',
              themeType: ThemeType.danger,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: 'Complete',
              themeType: ThemeType.complete,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: 'Info',
              themeType: ThemeType.info,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: 'Warning',
              themeType: ThemeType.warn,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: 'Success',
              themeType: ThemeType.success,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: 'Ghost',
              isGhost: true,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              size: FluuiButtonSize.small,
              title: 'Small',
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: 'Common',
              size: FluuiButtonSize.common,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              size: FluuiButtonSize.large,
              title: 'Large',
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              size: FluuiButtonSize.small,
              title: '按钮',
              fluid: true,
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            ),
            FluuiButton(
              title: '按钮',
              size: FluuiButtonSize.common,
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              fluid: true,
            ),
            FluuiButton(
              size: FluuiButtonSize.large,
              title: '按钮',
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              fluid: true,
            ),
            FluuiButton(
              title: '按钮',
              size: FluuiButtonSize.common,
              margin: EdgeInsets.only(top: 10),
              loose: true,
            ),
            FluuiButton(
              title: '按钮',
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              icon: Icons.add,
              fluid: true,
            ),
            FluuiButton(
              title: '按钮',
              margin: EdgeInsets.only(top: 10),
              icon: Icons.home,
            ),
          ],
        ),
      )),
    );
  }
}
