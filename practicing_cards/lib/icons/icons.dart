import 'package:flutter/material.dart';

const String _iconPath = 'assets/icons';

class _Icons extends AssetImage {
  const _Icons(String fileName) : super('$_iconPath/$fileName');
}

class AppIcons {
  static const googleIcon = _Icons('ic_google.png');
  static const facebookIcon = _Icons('ic_facebook.png');
  static const twitterIcon = _Icons('ic_twitter.png');
  static const checkIcon = _Icons('ic_check.png');
  static const checkedIcon = _Icons('ic_checked.png');
  static const checkBoxIcon = _Icons('ic_checkbox.png');
  static const minusIcon = _Icons('ic_minus.png');
}
