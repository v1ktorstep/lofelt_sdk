import Flutter
import UIKit

public class LofeltSdkPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
      let lofelt = LofeltImpl();
      LofeltSetup.setUp(binaryMessenger: registrar.messenger(), api: lofelt)
  }
}
