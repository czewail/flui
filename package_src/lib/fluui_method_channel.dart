import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fluui_platform_interface.dart';

/// An implementation of [FluuiPlatform] that uses method channels.
class MethodChannelFluui extends FluuiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fluui');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
