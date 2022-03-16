import 'package:bid_to_buy/res/assets.dart';
import 'package:bid_to_buy/res/res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loader {
  showLoader({
    BuildContext? context,
  }) {
    showDialog(
      context: context!,
      builder: (_) {
        return Material(
          color: Colors.black.withOpacity(0.5),
          child: Center(
            child: Container(
              width: getWidth() * 0.60,
              height: getHeight() * 0.60,
              child: Lottie.asset(
                Assets.loader_spinner,
              ),
            ),
          ),
        );
      },
    );
  }

  hideLoader(BuildContext context) {
    Navigator.of(context).pop();
  }

  static double getHeight() => sizes!.height;
  static double getWidth() => sizes!.width;
}
