package com.example.lofelt_sdk

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** LofeltSdkPlugin */
class LofeltSdkPlugin : FlutterPlugin, MethodCallHandler {
    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        val lofelt = LofeltImpl(flutterPluginBinding.applicationContext)
        Lofelt.setUp(flutterPluginBinding.binaryMessenger, lofelt)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    }
}
