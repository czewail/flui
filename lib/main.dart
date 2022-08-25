import 'package:flutter/material.dart';
import 'package:fluui/fluui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FluuiButton(
              title: '按钮',
              themeType: ThemeType.danger,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: '按钮',
              themeType: ThemeType.complete,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: '按钮',
              themeType: ThemeType.info,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: '按钮',
              themeType: ThemeType.warn,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: '按钮',
              themeType: ThemeType.success,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: '按钮',
              isGhost: true,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              size: FluuiButtonSize.small,
              title: '按钮',
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: '按钮',
              size: FluuiButtonSize.common,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              size: FluuiButtonSize.large,
              title: '按钮',
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              size: FluuiButtonSize.small,
              title: '按钮',
              fluid: true,
              margin: EdgeInsets.only(top: 10),
            ),
            FluuiButton(
              title: '按钮',
              size: FluuiButtonSize.common,
              margin: EdgeInsets.only(top: 10),
              fluid: true,
            ),
            FluuiButton(
              size: FluuiButtonSize.large,
              title: '按钮',
              margin: EdgeInsets.only(top: 10),
              fluid: true,
            ),
          ],
        ),
      ),
    );
  }
}
