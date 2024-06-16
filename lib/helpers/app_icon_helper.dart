import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dynamic_icon_plus/flutter_dynamic_icon_plus.dart';

class AppIconHelper {
  // static const _channel = MethodChannel('app_icon');

  static Future<void> setAppIcon(String iconName) async {
    try {
      if (await FlutterDynamicIconPlus.supportsAlternateIcons) {
        // await FlutterDynamicIconPlus.setAlternateIconName(iconName: "icon_new");
        if (kDebugMode) {
          print("successfully changed app icon");
        }
        return;
      }
    } on PlatformException {
      if (kDebugMode) {
        print("failed to change icon");
      }
    } catch (e) {
      // ha nem megy hat nem megy
    }
  }
}
