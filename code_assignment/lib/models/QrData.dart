// To parse this JSON data, do
//
//     final qrData = qrDataFromJson(jsonString);

import 'dart:convert';

QrData qrDataFromJson(String str) => QrData.fromJson(json.decode(str));

String qrDataToJson(QrData data) => json.encode(data.toJson());

class QrData {
  bool success;
  Data data;
  String message;

  QrData({
    required this.success,
    required this.data,
    required this.message,
  });

  factory QrData.fromJson(Map<String, dynamic> json) => QrData(
        success: json["success"],
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data.toJson(),
        "message": message,
      };
}

class Data {
  String uuid;
  // String qr;
  String barcode;
  DateTime qrValidUntil;
  String applePassFile;

  Data({
    required this.uuid,
    // required this.qr,
    required this.barcode,
    required this.qrValidUntil,
    required this.applePassFile,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        uuid: json["uuid"],
        // qr: json["qr"],
        barcode: json["barcode"],
        qrValidUntil: DateTime.parse(json["qr_valid_until"]),
        applePassFile: json["apple_pass_file"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        // "qr": qr,
        "barcode": barcode,
        "qr_valid_until": qrValidUntil.toIso8601String(),
        "apple_pass_file": applePassFile,
      };
}
