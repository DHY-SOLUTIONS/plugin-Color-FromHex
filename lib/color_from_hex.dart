
import 'color_from_hex_platform_interface.dart';

class ColorFromHex {
  Future<String?> getPlatformVersion() {
    return ColorFromHexPlatform.instance.getPlatformVersion();
  }
}
