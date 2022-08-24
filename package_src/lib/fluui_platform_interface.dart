import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fluui_method_channel.dart';

abstract class FluuiPlatform extends PlatformInterface {
  /// Constructs a FluuiPlatform.
  FluuiPlatform() : super(token: _token);

  static final Object _token = Object();

  static FluuiPlatform _instance = MethodChannelFluui();

  /// The default instance of [FluuiPlatform] to use.
  ///
  /// Defaults to [MethodChannelFluui].
  static FluuiPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FluuiPlatform] when
  /// they register themselves.
  static set instance(FluuiPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
