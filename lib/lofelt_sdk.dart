
import 'lofelt_sdk_platform_interface.dart';

class LofeltSdk {
  Future<String?> getPlatformVersion() {
    return LofeltSdkPlatform.instance.getPlatformVersion();
  }
}
