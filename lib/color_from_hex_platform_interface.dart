import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'color_from_hex_method_channel.dart';

abstract class ColorFromHexPlatform extends PlatformInterface {
  /// Constructs a ColorFromHexPlatform.
  ColorFromHexPlatform() : super(token: _token);

  static final Object _token = Object();

  static ColorFromHexPlatform _instance = MethodChannelColorFromHex();

  /// The default instance of [ColorFromHexPlatform] to use.
  ///
  /// Defaults to [MethodChannelColorFromHex].
  static ColorFromHexPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ColorFromHexPlatform] when
  /// they register themselves.
  static set instance(ColorFromHexPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
