import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:refilc/api/client.dart';
import 'package:refilc/models/settings.dart';
import 'package:flutter/foundation.dart';
import 'package:refilc_plus/models/premium_result.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uni_links/uni_links.dart';
import 'package:http/http.dart' as http;
// import 'package:home_widget/home_widget.dart';

class PremiumAuth {
  final SettingsProvider _settings;

  PremiumAuth({required SettingsProvider settings}) : _settings = settings;

  initAuth({required String product}) {
    try {
      print('initAuth');
    } catch (err, sta) {
      log("ERROR: initAuth: $err\n$sta");
    }
  }

  Future<bool> finishAuth(String sessionId) async {
    try {
      final result = await refreshAuth();
      return result;
    } catch (err, sta) {
      log("[ERROR] reFilc+ auth failed: $err\n$sta");
    }

    return false;
  }

  Future<bool> refreshAuth(
      {bool removePremium = false, bool reactivate = false}) async {
    if (!removePremium) {
      return true;
    }

    // activation of reFilc+ failed
    await _settings.update(
      premiumAccessToken: "",
      premiumScopes: [],
      premiumLogin: "",
      plusSessionId: "",
    );
    return false;
  }
}
