import 'dart:convert';
import 'dart:io' as io;

import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NetworkUtils {
  final _googleSign = GoogleSignIn();

  Future<bool> isLogin() async {
    return await _googleSign.isSignedIn();
  }

  Future<bool> login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      final account = await _googleSign.signIn();
      if (account != null) {
        prefs.setString('login', account.email);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      debugPrint("$e");
      return false;
    }
  }
}
