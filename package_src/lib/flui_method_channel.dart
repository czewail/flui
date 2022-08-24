import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flui_platform_interface.dart';

/// An implementation of [FluiPlatform] that uses method channels.
class MethodChannelFlui extends FluiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flui');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
