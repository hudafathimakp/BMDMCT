import 'dart:convert';

LoginResponse loginUserFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginUserToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    required this.status,
  });

  List<Status> status;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        status:
            List<Status>.from(json["status"].map((x) => Status.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": List<dynamic>.from(status.map((x) => x.toJson())),
      };
}

class Status {
  Status({
    required this.status,
    required this.message,
    required this.otp,
    required this.id,
    required this.name,
    required this.leader,
    required this.panchayatId,
    required this.panchayat,
    required this.wardId,
    required this.ward,
  });

  String status;
  String message;
  String otp;
  String id;
  String name;
  String leader;
  String panchayatId;
  String panchayat;
  String wardId;
  String ward;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        status: json["status"],
        message: json["Message"],
        otp: json["OTP"],
        id: json["id"],
        name: json["name"],
        leader: json["leader"],
        panchayatId: json["panchayat_id"],
        panchayat: json["panchayat"],
        wardId: json["ward_id"],
        ward: json["ward"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "Message": message,
        "OTP": otp,
        "id": id,
        "name": name,
        "leader": leader,
        "panchayat_id": panchayatId,
        "panchayat": panchayat,
        "ward_id": wardId,
        "ward": ward,
      };
}
