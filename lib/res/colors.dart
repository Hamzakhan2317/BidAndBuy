import 'package:flutter/material.dart';
import 'dart:ui';

Map<int, Color> colorCodes = {
  50: const Color.fromRGBO(147, 205, 72, .1),
  100: const Color.fromRGBO(147, 205, 72, .2),
  200: const Color.fromRGBO(147, 205, 72, .3),
  300: const Color.fromRGBO(147, 205, 72, .4),
  400: const Color.fromRGBO(147, 205, 72, .5),
  500: const Color.fromRGBO(147, 205, 72, .6),
  600: const Color.fromRGBO(147, 205, 72, .7),
  700: const Color.fromRGBO(147, 205, 72, .8),
  800: const Color.fromRGBO(147, 205, 72, .9),
  900: const Color.fromRGBO(147, 205, 72, 1),
};

class AppColors {
  //App colors=======================================

  static const appTheme = Color.fromRGBO(255, 148, 7, 1);
  static const background1 = Color.fromRGBO(223, 228, 227, 1);

  //===================================================

  static const appBgGradient1 = Color.fromRGBO(238, 238, 238, 1);
  static const appBgGradient2 = Color.fromRGBO(227, 236, 245, 1);
  static const appBgGradient3 = Color.fromRGBO(223, 237, 239, 1);
  static const appBgGradient4 = Color.fromRGBO(231, 242, 243, 1);

  //====================================================

  //solid Colors
  static const blackColor = Color.fromRGBO(0, 0, 0, 1);
  static const whiteColor = Color.fromRGBO(255, 255, 255, 1);
  static const transparentColor = Color.fromRGBO(255, 255, 255, 0);
  static const imageBackgroundColor = Color.fromRGBO(224, 222, 223, 1);
  static const imageBackground2Color = Color.fromRGBO(253, 180, 191, 1);
  static const gradient1Color = Color.fromRGBO(252, 172, 183, 1);
  static const gradient2Color = Color.fromRGBO(214, 90, 92, 1);
  static const buttonGradient1Color = Color.fromRGBO(252, 177, 188, 1);
  static const buttonGradient2Color = Color.fromRGBO(246, 155, 162, 1);

  //Shadow color
  static const mainButtonShadow = Color.fromRGBO(0, 0, 0, 0.16);
  static const searchBarShadow = Color.fromRGBO(0, 0, 0, 0.06);
  static const itemContainerShadow = Color.fromRGBO(246, 203, 209, 1);

  static final Color white = HexColor.fromHex("#FFFFFF");
  static final Color bgColor = HexColor.fromHex("#F5F6F8");
  static final Color greyColor = HexColor.fromHex("#818396");
  static final Color mainColor = HexColor.fromHex("#8ECF00");
  static final Color lightGreyColor = HexColor.fromHex("#F4F4F5");
  static final Color confirmTextColor = HexColor.fromHex("#DEDCDD");
  static final Color activePin = HexColor.fromHex("#252736");
  static final Color addCardBg = HexColor.fromHex("#D5D6DD");
  static final Color walletTextColor = HexColor.fromHex("#424457");
  static final Color homeBgColor = HexColor.fromHex("#E5E5E5");
  static final Color notesFieldBgColor = HexColor.fromHex("#FDFDFD");
  static final Color notesTextColor = HexColor.fromHex("#968092");
  static final Color bikecContainerBorderColor = HexColor.fromHex("#BFB2B2");
  static final Color checkBoxBorderColor = HexColor.fromHex("#A3A3A3");
  static final Color addCardFieldBgColor = HexColor.fromHex("#F7F7F7");
  static final Color darkGreenColor = HexColor.fromHex("#12CC5E");
  static final Color cardDetailColor = HexColor.fromHex("#8A8F95");
  static final Color lightPinkColor = HexColor.fromHex("#FBFAFA");
  static final Color midGrey = HexColor.fromHex("#EEEEEE");
  static final Color lGrey = HexColor.fromHex("#C0C0C0");
  static final Color complaintBG = HexColor.fromHex("#FCFCFC");
  static final Color sender = HexColor.fromHex("#DDF1B3");
  static final Color reciver = HexColor.fromHex("#F4FAE5");
  static final Color timeColorRed = HexColor.fromHex("#F4626E");
  static final Color topUpWallet = HexColor.fromHex("#F0F0F0");
  static final Color enterAmountText = HexColor.fromHex("#AEA6AE");
  static final Color amountText = HexColor.fromHex("#D4D4D4");
  static final Color pinkColor = HexColor.fromHex("#FF00BF");
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
