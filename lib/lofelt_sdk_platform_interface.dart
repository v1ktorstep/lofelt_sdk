import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'lofelt_sdk_method_channel.dart';

abstract class LofeltSdkPlatform extends PlatformInterface {
  /// Constructs a LofeltSdkPlatform.
  LofeltSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static LofeltSdkPlatform _instance = MethodChannelLofeltSdk();

  /// The default instance of [LofeltSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelLofeltSdk].
  static LofeltSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LofeltSdkPlatform] when
  /// they register themselves.
  static set instance(LofeltSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
