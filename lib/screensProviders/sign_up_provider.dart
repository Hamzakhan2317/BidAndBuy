import 'package:bid_to_buy/models/sign_up_model.dart';
import 'package:bid_to_buy/network/API.dart';
import 'package:bid_to_buy/network/api_url.dart';
import 'package:bid_to_buy/network/models.dart';
import 'package:bid_to_buy/res/loader.dart';
import 'package:bid_to_buy/res/myToast.dart';
import 'package:flutter/cupertino.dart';

class SignUpProvider extends ChangeNotifier {
  SignUpModel signUpModel = SignUpModel();
  Future<void> init() async {}

  Future<bool> hitSignUpApi(
      {@required BuildContext? context,
      required String phoneNumber,
      required String cnic,
      required String name,
      required String age,
      required String address,
      required String gender,
      required String city,
      required String district,
      required String imei,
      required String emergencyContactNo}) async {
    try {
      Loader().showLoader(context: context);
      Map<String, dynamic> header = {"Content-Type": "application/json"};
      Map<String, dynamic> body = {
        "phoneNo": phoneNumber,
        "fullName": name,
        "cnic": cnic,
        "age": age,
        "gender": gender,
        "address": address,
        "city": city,
        "district": district,
        "imei": imei,
        "emergencyContactNo": emergencyContactNo,
      };

      signUpModel = await Api.callPostApi(
          url: SignUpApiUrl,
          body: body,
          myHeaders: header,
          modelName: Models.signUpModel);
      print(signUpModel);
      if (signUpModel != null) {
        print("Successful Registered =====================:::");
        Loader().hideLoader(context!);
        Toasts.getSuccessToast(heading: "Otp sent to ${phoneNumber}");
        return true;
      } else {
        return false;
      }
    } catch (ex) {
      Loader().hideLoader(context!);
      print("SignUp Api:" + ex.toString());
      return false;
    }
  }

  // Future<bool> hitOtpApi(
  //     {@required BuildContext? context,
  //     @required String? otp,
  //     @required String? phoneNumber}) async {
  //   try {
  //     Loader().showLoader(context: context);
  //     Map<String, dynamic> header = {"Content-Type": "application/json"};

  //     Map<String, dynamic> parms = {"otp": otp, "phoneNo": phoneNumber};

  //     otpModel = await Api.callPostApi(
  //         url: otpApiUrl,
  //         parameters: parms,
  //         myHeaders: header,
  //         modelName: Models.otpModel);
  //     if (otpModel != null) {
  //       Loader().hideLoader(context!);
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   } catch (ex) {
  //     Loader().hideLoader(context!);
  //     print("Otp Api:" + ex.toString());
  //     return false;
  //   }
  // }
}
