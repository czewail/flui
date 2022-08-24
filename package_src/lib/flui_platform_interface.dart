import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flui_method_channel.dart';

abstract class FluiPlatform extends PlatformInterface {
  /// Constructs a FluiPlatform.
  FluiPlatform() : super(token: _token);

  static final Object _token = Object();

  static FluiPlatform _instance = MethodChannelFlui();

  /// The default instance of [FluiPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlui].
  static FluiPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FluiPlatform] when
  /// they register themselves.
  static set instance(FluiPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
