import 'package:flutter/material.dart';


class AppColors {
  // Primary
  static final primary = HexColor.fromHex('4AB16F');
  static final primary02 = HexColor.fromHex('5BE584');
  static final primary04 = HexColor.fromHex('007B55');
  static final primary05 = HexColor.fromHex('005249');
  // Secondary
  static final secondary = HexColor.fromHex('098996');
  static final secondary02 = HexColor.fromHex('12DBEF');
  static final secondary04 = HexColor.fromHex('0BA5B5');
  static final secondary05 = HexColor.fromHex('064F56');
  // Green
  static final green = HexColor.fromHex('00AB55');
  static final green02 = HexColor.fromHex('5BE584');
  static final green04 = HexColor.fromHex('007B55');
  static final green05 = HexColor.fromHex('005249');
  // Info
  static final info = HexColor.fromHex('1890FF');
  static final info01 = HexColor.fromHex('D0F2FF');
  static final info02 = HexColor.fromHex('4CAFF');
  static final info04 = HexColor.fromHex('0C53B7');
  static final info05 = HexColor.fromHex('04297A');
  // Success
  static final success = HexColor.fromHex('54D62C');
  static final success01 = HexColor.fromHex('E9FCD4');
  static final success02 = HexColor.fromHex('AAF27F');
  static final success04 = HexColor.fromHex('229A16');
  static final success05 = HexColor.fromHex('08660D');
  // Error
  static final error = HexColor.fromHex('FF4842');
  static final error01 = HexColor.fromHex('FFE7D9');
  static final error02 = HexColor.fromHex('FFA48D');
  static final error04 = HexColor.fromHex('B72136');
  static final error05 = HexColor.fromHex('7A0C2E');
  // Warning
  static final warning = HexColor.fromHex('FFC107');
  static final warning01 = HexColor.fromHex('FFF7CD');
  static final warning02 = HexColor.fromHex('FFE16A');
  static final warning04 = HexColor.fromHex('B78103');
  static final warning05 = HexColor.fromHex('7A4F01');
}

extension HexColor on Color {
  /// String is in the format 'aabbcc' or 'ffaabbcc' with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}