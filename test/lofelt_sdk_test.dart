import 'package:flutter_test/flutter_test.dart';
import 'package:lofelt_sdk/lofelt_sdk.dart';
import 'package:lofelt_sdk/lofelt_sdk_platform_interface.dart';
import 'package:lofelt_sdk/lofelt_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLofeltSdkPlatform
    with MockPlatformInterfaceMixin
    implements LofeltSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LofeltSdkPlatform initialPlatform = LofeltSdkPlatform.instance;

  test('$MethodChannelLofeltSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLofeltSdk>());
  });

  test('getPlatformVersion', () async {
    LofeltSdk lofeltSdkPlugin = LofeltSdk();
    MockLofeltSdkPlatform fakePlatform = MockLofeltSdkPlatform();
    LofeltSdkPlatform.instance = fakePlatform;

    expect(await lofeltSdkPlugin.getPlatformVersion(), '42');
  });
}
