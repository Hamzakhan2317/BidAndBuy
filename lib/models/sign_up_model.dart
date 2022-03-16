/// message : "Operation performed successfully"
/// code : 1
/// data : {"code":"704156","phoneNo":"03481618040"}

class SignUpModel {
  String? message;
  int? code;
  Data? data;

  SignUpModel({this.message, this.code, this.data});

  SignUpModel.fromJson(dynamic json) {
    message = json["message"];
    code = json["code"];
    data = json["data"] != null ? Data.fromJson(json["data"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["message"] = message;
    map["code"] = code;
    if (data != null) {
      map["data"] = data?.toJson();
    }
    return map;
  }
}

/// code : "704156"
/// phoneNo : "03481618040"
class Data {
  String? token;
  User? user;

  Data({this.token, this.user});

  Data.fromJson(dynamic json) {
    token = json["token"];
    user = json["user"] != null ? User.fromJson(json["user"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["token"] = token;
    map["user"] = user?.toJson();
    return map;
  }
}

class User {
  String? id;
  String? createdOn;
  String? phoneNo;
  String? fullName;
  String? cnic;
  String? gender;
  String? district;
  int? age;
  String? address;
  String? imei;
  String? city;
  String? emergencyContactNo;
  String? otp;

  User(
      {this.cnic,
      this.fullName,
      this.age,
      this.imei,
      this.address,
      this.district,
      this.gender,
      this.city,
      this.emergencyContactNo,
      this.phoneNo,
      this.id,
      this.createdOn,
      this.otp});

  User.fromJson(dynamic json) {
    cnic = json["cnic"];
    phoneNo = json["phoneNo"];
    fullName = json["fullName"];
    imei = json["imei"];
    age = json["age"];
    address = json["address"];
    gender = json["gender"];
    district = json["district"];
    city = json["city"];
    id = json["id"];
    createdOn = json["createdOn"];
    otp = json["otp"];
    emergencyContactNo = json["emergencyContactNo"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["phoneNo"] = phoneNo;
    map["cnic"] = cnic;
    map["fullName"] = fullName;
    map["imei"] = imei;
    map["age"] = age;
    map["gender"] = gender;
    map["address"] = address;
    map["district"] = district;
    map["city"] = city;
    map["id"] = id;
    map["createdOn"] = createdOn;
    map["otp"] = otp;
    map["emergencyContactNo"] = emergencyContactNo;
    return map;
  }
}
