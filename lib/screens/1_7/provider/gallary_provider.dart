import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:local_auth/local_auth.dart';

class GalleryProvider extends ChangeNotifier {
  final auth = LocalAuthentication();
  bool isVerified = false;

  Future<void> authentication() async {
    bool isDeviceSupport = await auth.isDeviceSupported();
    bool isActive = await auth.canCheckBiometrics;

    if (isDeviceSupport && isActive) {
      await auth.authenticate(localizedReason: 'Authentication Needed!');
      isVerified = true;
      notifyListeners();
    } else {
      isVerified = false;
      notifyListeners();
    }
  }
}