
import 'package:bid_to_buy/models/errorResponseModel.dart';
import 'package:bid_to_buy/models/sign_up_model.dart';

class Models {
  static const String errorModel = "errorModel";
  static const String loginModel = "loginModel";
  static const String signUpModel = "signUpModel";
  static const String genralModel = "genralModel";
  static const String fileModel = "fileModel";
  static const String policeStationModel = "policeStationModel";
  static const String newsAlertModel = "newsAlertModel";
  static const String otpModel = "otpModel";
  static const String allComplainsModel = "allComplainsModel";
  static const String complainDetailModel = "complainDetailModel";
  static const String cashSnatchingModel = "cashModel";

  static Future<dynamic> getModelObject(
      String modelName, Map<String, dynamic> json) async {
    switch (modelName) {
      case errorModel:
        return ErrorResponse.fromJson(json);
      // case loginModel:
      //   return LoginModel.fromJson(json);
      // case genralModel:
      //   return GenralModel.fromJson(json);
      // case fileModel:
      //   return FileModel.fromJson(json);
      // case policeStationModel:
      //   return PoliceStationsModel.fromJson(json);
      // case newsAlertModel:
      //   return NewsAlertModel.fromJson(json);
      // case otpModel:
      //   return OtpModel.fromJson(json);
      // case allComplainsModel:
      //   return AllComplainsModel.fromJson(json);
      // case complainDetailModel:
      //   return ComplainDetailModel.fromJson(json);
      case signUpModel:
        return SignUpModel.fromJson(json);
    }
  }
}
