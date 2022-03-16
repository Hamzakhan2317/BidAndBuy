import 'dart:ui';
import 'package:bid_to_buy/res/assets.dart';
import 'package:bid_to_buy/res/colors.dart';
import 'package:bid_to_buy/res/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toasts {
  static getErrorToast({int? durationTime, @required String? heading}) async {
    await Fluttertoast.showToast(
        msg: heading ?? "Please try again.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: durationTime ?? 3,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static getSuccessToast({int? durationTime, @required String? heading}) async {
    await Fluttertoast.showToast(
        msg: heading ?? "Please try again.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: durationTime ?? 2,
        backgroundColor: Colors.lightGreen,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static getWarningToast({int? durationTime, @required String? heading}) async {
    await Fluttertoast.showToast(
        msg: heading ?? "Please try again.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: durationTime ?? 2,
        backgroundColor: Colors.yellowAccent,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  static Widget courierDetailPopup(
      {required BuildContext context, required Function? closePressed}) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: getWidth() * .8,
          height: getHeight() * .4,
          padding: EdgeInsets.symmetric(
              horizontal: getWidth() * .05, vertical: getHeight() * .02),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  closePressed!.call();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.clear,
                        color: AppColors.lGrey, size: getHeight() * .03)
                  ],
                ),
              ),
              Row(
                children: [
                  ClipRRect(
                    child: Image(
                      image: AssetImage(Assets.rider),
                      fit: BoxFit.cover,
                      height: getHeight() * .06,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                  SizedBox(
                    width: getWidth() * .04,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Courier",
                        style: TextStyle(
                            fontFamily: Assets.gilroyLight,
                            fontSize: sizes!.mediumFontSize),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Margje Jutten",
                            style: TextStyle(
                                fontFamily: Assets.gilroyMedium,
                                fontSize: sizes!.mediumFontSize),
                          ),
                          SizedBox(
                            width: getWidth() * .01,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            color: AppColors.activePin,
                            size: getHeight() * .024,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2, left: 1),
                            child: Text(
                              "4.7",
                              style: TextStyle(
                                  fontFamily: Assets.gilroyLight,
                                  color: AppColors.activePin),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: getHeight() * .015,
              ),
              Divider(),
              SizedBox(
                height: getHeight() * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getHeadingAndValue(
                      heading: "Vehicle Type", value: "Antonin Hafer"),
                  SizedBox(
                    width: getWidth() * .08,
                  ),
                  getHeadingAndValue(
                      heading: "Vehicle Name", value: "Toyota Prius"),
                ],
              ),
              SizedBox(
                height: getHeight() * .04,
              ),
              getHeadingAndValue(
                  heading: "Vehicle Number", value: "NG 05-3452"),
            ],
          ),
        ),
      ),
    );
  }

  static Widget getHeadingAndValue({String? heading, String? value}) {
    return Column(
      children: [
        getBlackText(text: heading),
        SizedBox(
          height: getHeight() * .01,
        ),
        getLightGreyText(text: value),
      ],
    );
  }

  static Widget getLightGreyText({String? text}) {
    return Text(
      text ?? "",
      style:
          TextStyle(color: AppColors.lGrey, fontFamily: Assets.gilroyRegular),
    );
  }

  static Widget getBlackText({String? text}) {
    return Text(
      text ?? "",
      style: TextStyle(
          fontFamily: Assets.gilroySemiBold, fontSize: sizes!.regularFontSize),
    );
  }
}
