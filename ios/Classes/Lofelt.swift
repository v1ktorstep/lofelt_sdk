// Autogenerated from Pigeon (v10.1.6), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)"
  ]
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}
/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol Lofelt {
  func initHaptics() throws
  func deviceMeetsMinimumRequirements() throws -> Bool
  func load(data: String) throws
  func play() throws
  func stop() throws
  func seek(time: Double) throws
  func loop(enabled: Bool) throws
  func setAmplitudeMultiplication(factor: Double) throws
  func setFrequencyShift(shift: Double) throws
  func clipDuration() throws -> Double
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class LofeltSetup {
  /// The codec used by Lofelt.
  /// Sets up an instance of `Lofelt` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: Lofelt?) {
    let initHapticsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.lofelt_sdk.Lofelt.initHaptics", binaryMessenger: binaryMessenger)
    if let api = api {
      initHapticsChannel.setMessageHandler { _, reply in
        do {
          try api.initHaptics()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      initHapticsChannel.setMessageHandler(nil)
    }
    let deviceMeetsMinimumRequirementsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.lofelt_sdk.Lofelt.deviceMeetsMinimumRequirements", binaryMessenger: binaryMessenger)
    if let api = api {
      deviceMeetsMinimumRequirementsChannel.setMessageHandler { _, reply in
        do {
          let result = try api.deviceMeetsMinimumRequirements()
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      deviceMeetsMinimumRequirementsChannel.setMessageHandler(nil)
    }
    let loadChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.lofelt_sdk.Lofelt.load", binaryMessenger: binaryMessenger)
    if let api = api {
      loadChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let dataArg = args[0] as! String
        do {
          try api.load(data: dataArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      loadChannel.setMessageHandler(nil)
    }
    let playChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.lofelt_sdk.Lofelt.play", binaryMessenger: binaryMessenger)
    if let api = api {
      playChannel.setMessageHandler { _, reply in
        do {
          try api.play()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      playChannel.setMessageHandler(nil)
    }
    let stopChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.lofelt_sdk.Lofelt.stop", binaryMessenger: binaryMessenger)
    if let api = api {
      stopChannel.setMessageHandler { _, reply in
        do {
          try api.stop()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      stopChannel.setMessageHandler(nil)
    }
    let seekChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.lofelt_sdk.Lofelt.seek", binaryMessenger: binaryMessenger)
    if let api = api {
      seekChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let timeArg = args[0] as! Double
        do {
          try api.seek(time: timeArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      seekChannel.setMessageHandler(nil)
    }
    let loopChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.lofelt_sdk.Lofelt.loop", binaryMessenger: binaryMessenger)
    if let api = api {
      loopChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.loop(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      loopChannel.setMessageHandler(nil)
    }
    let setAmplitudeMultiplicationChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.lofelt_sdk.Lofelt.setAmplitudeMultiplication", binaryMessenger: binaryMessenger)
    if let api = api {
      setAmplitudeMultiplicationChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let factorArg = args[0] as! Double
        do {
          try api.setAmplitudeMultiplication(factor: factorArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setAmplitudeMultiplicationChannel.setMessageHandler(nil)
    }
    let setFrequencyShiftChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.lofelt_sdk.Lofelt.setFrequencyShift", binaryMessenger: binaryMessenger)
    if let api = api {
      setFrequencyShiftChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let shiftArg = args[0] as! Double
        do {
          try api.setFrequencyShift(shift: shiftArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setFrequencyShiftChannel.setMessageHandler(nil)
    }
    let clipDurationChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.lofelt_sdk.Lofelt.clipDuration", binaryMessenger: binaryMessenger)
    if let api = api {
      clipDurationChannel.setMessageHandler { _, reply in
        do {
          let result = try api.clipDuration()
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      clipDurationChannel.setMessageHandler(nil)
    }
  }
}
