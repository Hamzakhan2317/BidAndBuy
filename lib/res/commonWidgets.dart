import 'package:bid_to_buy/res/assets.dart';
import 'package:bid_to_buy/res/colors.dart';
import 'package:bid_to_buy/res/res.dart';
import 'package:bid_to_buy/res/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class CommmonWidget {
  static Widget whiteInputField(
      {TextEditingController? textEditingController,
      bool? obscureText,
      String? hint,
      Icon? sufixIcon,
      double? height}) {
    return Container(
      //   width: getWidth()*.8,
      height: height ?? getHeight() * .07,
      color: AppColors.white,
      child: Center(
        child: TextField(
          controller: textEditingController,
          obscureText: obscureText ?? false,
          cursorHeight: getHeight() * .03,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: getWidth() * .04),
              border: InputBorder.none,
              hintText: hint ?? "",
              hintStyle: TextStyle(
                color: Colors.black,
                fontSize: getHeight() * .020,
              )),
        ),
      ),
    );
  }

  static Widget whiteInputFieldSufixIcon({
    TextEditingController? textEditingController,
    bool? obscureText,
    String? hint,
    Icon? sufixIcon,
  }) {
    return Container(
      //   width: getWidth()*.8,
      height: getHeight() * .09,
      color: AppColors.white,
      child: Center(
        child: TextField(
          controller: textEditingController,
          obscureText: obscureText ?? false,
          cursorHeight: getHeight() * .03,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                  left: getWidth() * .04, top: getHeight() * .02),
              suffixIcon: sufixIcon,
              border: InputBorder.none,
              hintText: hint ?? "",
              hintStyle: TextStyle(
                color: Colors.black,
                fontSize: getHeight() * .020,
              )),
        ),
      ),
    );
  }

  static Widget getRoundedPointer() {
    return CircleAvatar(
      backgroundColor: AppColors.white,
      radius: getHeight() * .015,
      child: CircleAvatar(
        backgroundColor: AppColors.mainColor,
        radius: getHeight() * .007,
      ),
    );
  }

  static Widget getButton(
      {double? width,
      String? text,
      Function? onPress,
      Color? btnColor,
      Color? textColor,
      Color? borderColor,
      String? fontFamily}) {
    return GestureDetector(
      onTap: () {
        onPress!.call();
      },
      child: Container(
        height: getHeight() * 0.07,
        width: width ?? getWidth() * .9,
        decoration: BoxDecoration(
          color: btnColor ?? AppColors.mainColor,
          border: Border.all(color: borderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(
            getWidth() * .02,
          ),
        ),
        child: Center(
          child: Text(
            text ?? "",
            style: TextStyle(
                color: textColor ?? AppColors.white,
                fontSize: 16,
                fontFamily: fontFamily ?? Assets.gilroyMedium),
          ),
        ),
      ),
    );
  }

  static Widget getButtonWithImage(
      {double? width,
      String? text,
      Function? onPress,
      Color? btnColor,
      Color? textColor,
      Color? borderColor,
      String? fontFamily}) {
    return GestureDetector(
      onTap: () {
        onPress!.call();
      },
      child: Container(
        height: getHeight() * 0.07,
        width: width ?? getWidth() * .9,
        margin: EdgeInsets.symmetric(
          horizontal: getWidth() * 0.05,
        ),
        decoration: BoxDecoration(
          color: btnColor ?? AppColors.mainColor,
          border: Border.all(color: borderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(
            getWidth() * .02,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth() * .05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(""),
                Text(
                  text ?? "",
                  style: TextStyle(
                      color: textColor ?? AppColors.white,
                      fontSize: 16,
                      fontFamily: fontFamily ?? Assets.gilroyMedium),
                ),
                Image(
                  image: AssetImage(Assets.gift),
                  height: getHeight() * .03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget appBar(
      {BuildContext? context, String? title, Color? bgColor, double? height}) {
    return Container(
      width: sizes!.width,
      height: height ?? getHeight() * .10,
      color: bgColor ?? Colors.transparent,
      //margin: EdgeInsets.all(1),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //SizedBox(width: getWidth()*.0,),
            IconButton(
                onPressed: () {
                  Navigator.pop(context!);
                },
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.black,
                )),
            Text(
              title ?? "",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: sizes!.largeFontSize,
                  fontFamily: Assets.gilroyMedium),
            ),
            SizedBox(
              width: getWidth() * .10,
            )
          ],
        ),
      ),
    );
  }

  static Widget getAddCardButton(
      {@required String? text, @required Function? onPress}) {
    return GestureDetector(
      onTap: () {
        onPress!.call();
      },
      child: Card(
        elevation: 0.4,
        child: Container(
          height: getHeight() * .08,
          padding: EdgeInsets.symmetric(horizontal: getWidth() * .04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.mainColor, width: 1)),
                child: Icon(
                  Icons.add,
                  color: AppColors.mainColor,
                  size: getHeight() * .022,
                ),
              ),
              Text(
                text ?? "",
                style: TextStyle(
                    fontFamily: Assets.gilroyMedium,
                    fontSize: sizes!.mediumFontSize),
              ),
              Text("")
            ],
          ),
        ),
      ),
    );
  }

  static Widget fromToCard({Function? onPress}) {
    return GestureDetector(
      onTap: () {
        if (onPress != null) onPress.call();
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(getHeight() * .01))),
        child: Container(
          width: getWidth() * .8,
          height: getHeight() * .2,
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(getHeight() * .02))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: getWidth() * .02),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(Assets.from_Icon),
                          height: getHeight() * .02,
                        ),
                        SizedBox(
                          height: getHeight() * .01,
                        ),
                        Image(
                          image: AssetImage(Assets.verticalDivider),
                          width: getWidth() * .01,
                          height: getHeight() * .07,
                        ),
                        SizedBox(
                          height: getHeight() * .01,
                        ),
                        Image(
                            image: AssetImage(Assets.to_Icon),
                            height: getHeight() * .02),
                      ],
                    ),
                  ),
                  Container(
                    width: getWidth() * .8,
                    //  color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "From:",
                          style: TextStyle(color: AppColors.greyColor),
                        ),
                        SizedBox(
                          height: getHeight() * .01,
                        ),
                        Text(
                          "42 E 20th St, New York",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontFamily: Assets.gilroyMedium,
                              fontSize: sizes!.mediumFontSize),
                        ),
                        Divider(
                          height: getHeight() * .03,
                          thickness: 2,
                          color: AppColors.lightGreyColor,
                        ),
                        Text(
                          "To:",
                          style: TextStyle(color: AppColors.greyColor),
                        ),
                        SizedBox(
                          height: getHeight() * .01,
                        ),
                        Text("99 E 52nd St, New York",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontFamily: Assets.gilroyMedium,
                                fontSize: sizes!.mediumFontSize)),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget onLoginSignup(
      {String? text, String? clickableText, Function? onPress}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text ?? "",
          style: TextStyle(
              fontFamily: Assets.gilroyMedium,
              fontSize: sizes!.regularFontSize,
              color: AppColors.greyColor),
        ),
        SizedBox(
          width: getWidth() * .03,
        ),
        GestureDetector(
          onTap: () => onPress!.call(),
          child: Text(
            clickableText ?? "",
            style: TextStyle(
                color: AppColors.pinkColor,
                fontSize: sizes!.regularFontSize,
                fontFamily: Assets.gilroyMedium),
          ),
        ),
      ],
    );
  }

  static Widget loading({double? height, double? width}) {
    return Center(
      child: Container(
        width: width ?? getWidth() * 0.35,
        height: height ?? getHeight() * 0.35,
        child: Lottie.asset(
          Assets.loader_spinner,
        ),
      ),
    );
  }

  static Widget noDataFoundText({double? size, String? text, Color? color}) {
    return Center(
      child: Text(
        text ?? "No Data",
        style: TextStyle(
            color: color ?? Colors.black,
            fontFamily: Assets.gilroySemiBold,
            fontSize: AppSizes().regularFontSize),
      ),
    );
  }
}
