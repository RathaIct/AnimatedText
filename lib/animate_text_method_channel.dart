import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'animate_text_platform_interface.dart';

/// An implementation of [AnimatedTextPlatform] that uses method channels.
class MethodChannelAnimatedText extends AnimatedTextPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('animated_text');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}