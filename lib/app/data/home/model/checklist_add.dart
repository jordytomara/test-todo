// To parse this JSON data, do
//
//     final checklistAddModel = checklistAddModelFromJson(jsonString);

import 'dart:convert';

ChecklistAddModel checklistAddModelFromJson(String str) => ChecklistAddModel.fromJson(json.decode(str));

String checklistAddModelToJson(ChecklistAddModel data) => json.encode(data.toJson());

class ChecklistAddModel {
  int statusCode;
  String message;
  dynamic errorMessage;

  ChecklistAddModel({
    required this.statusCode,
    required this.message,
    required this.errorMessage,
  });

  factory ChecklistAddModel.fromJson(Map<String, dynamic> json) => ChecklistAddModel(
    statusCode: json["statusCode"],
    message: json["message"],
    errorMessage: json["errorMessage"],
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
    "errorMessage": errorMessage,
  };
}
