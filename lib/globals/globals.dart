import 'package:bid_to_buy/res/res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGlobals {
  static double getWidthRatio() => sizes?.widthRatio ?? 1;

  static double getHeightRatio() => sizes?.heightRatio ?? 1;

  static double getFontRatio() => sizes?.fontRatio ?? 1.0;
}
