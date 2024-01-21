import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'color_from_hex_platform_interface.dart';

/// An implementation of [ColorFromHexPlatform] that uses method channels.
class MethodChannelColorFromHex extends ColorFromHexPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('color_from_hex');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
