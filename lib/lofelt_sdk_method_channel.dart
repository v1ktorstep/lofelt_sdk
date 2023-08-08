import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'lofelt_sdk_platform_interface.dart';

/// An implementation of [LofeltSdkPlatform] that uses method channels.
class MethodChannelLofeltSdk extends LofeltSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('lofelt_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
