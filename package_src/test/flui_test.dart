import 'package:flutter_test/flutter_test.dart';
import 'package:flui/flui.dart';
import 'package:flui/flui_platform_interface.dart';
import 'package:flui/flui_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFluiPlatform 
    with MockPlatformInterfaceMixin
    implements FluiPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FluiPlatform initialPlatform = FluiPlatform.instance;

  test('$MethodChannelFlui is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlui>());
  });

  test('getPlatformVersion', () async {
    Flui fluiPlugin = Flui();
    MockFluiPlatform fakePlatform = MockFluiPlatform();
    FluiPlatform.instance = fakePlatform;
  
    expect(await fluiPlugin.getPlatformVersion(), '42');
  });
}
