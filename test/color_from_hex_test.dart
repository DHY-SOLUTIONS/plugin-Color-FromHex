import 'package:flutter_test/flutter_test.dart';
import 'package:color_from_hex/color_from_hex.dart';
import 'package:color_from_hex/color_from_hex_platform_interface.dart';
import 'package:color_from_hex/color_from_hex_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockColorFromHexPlatform
    with MockPlatformInterfaceMixin
    implements ColorFromHexPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ColorFromHexPlatform initialPlatform = ColorFromHexPlatform.instance;

  test('$MethodChannelColorFromHex is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelColorFromHex>());
  });

  test('getPlatformVersion', () async {
    ColorFromHex colorFromHexPlugin = ColorFromHex();
    MockColorFromHexPlatform fakePlatform = MockColorFromHexPlatform();
    ColorFromHexPlatform.instance = fakePlatform;

    expect(await colorFromHexPlugin.getPlatformVersion(), '42');
  });
}
