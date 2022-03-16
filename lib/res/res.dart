import 'package:bid_to_buy/res/utils.dart';
import 'package:flutter/cupertino.dart';
import 'sizes.dart';

late AppSizes sizes;

bool _isInitialized = false;

void initializeResources({required BuildContext context}) {
  AppSizes().initializeSize(context);
  if (_isInitialized) {
    /**
     * this is to prevent
     * multiple initialization calls.
     */
    return;
  }

  sizes = AppSizes()..initializeSize(context);
}

Future<void> initializeAppResources({@required context}) async {
  sizes = AppSizes()..initializeSize(context);
  PreferenceUtils.init();
}

double getHeight() => sizes!.height;
double getWidth() => sizes!.width;

 
