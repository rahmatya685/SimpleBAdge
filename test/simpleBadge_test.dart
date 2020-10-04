import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simpleBadge/simpleBadge.dart';

void main() {
  const MethodChannel channel = MethodChannel('simpleBadge');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
//    expect(await SimpleBadge.platformVersion, '42');
  });
}
