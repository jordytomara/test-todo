// To parse this JSON data, do
//
//     final checklistModel = checklistModelFromJson(jsonString);

import 'dart:convert';

ChecklistModel checklistModelFromJson(String str) => ChecklistModel.fromJson(json.decode(str));

String checklistModelToJson(ChecklistModel data) => json.encode(data.toJson());

class ChecklistModel {
  int statusCode;
  String message;
  dynamic errorMessage;
  List<DatumList> data;

  ChecklistModel({
    required this.statusCode,
    required this.message,
    required this.errorMessage,
    required this.data,
  });

  factory ChecklistModel.fromJson(Map<String, dynamic> json) => ChecklistModel(
    statusCode: json["statusCode"],
    message: json["message"],
    errorMessage: json["errorMessage"],
    data: List<DatumList>.from(json["data"].map((x) => DatumList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
    "errorMessage": errorMessage,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class DatumList {
  int id;
  String name;
  dynamic items;
  bool checklistCompletionStatus;

  DatumList({
    required this.id,
    required this.name,
    required this.items,
    required this.checklistCompletionStatus,
  });

  factory DatumList.fromJson(Map<String, dynamic> json) => DatumList(
    id: json["id"],
    name: json["name"],
    items: json["items"],
    checklistCompletionStatus: json["checklistCompletionStatus"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "items": items,
    "checklistCompletionStatus": checklistCompletionStatus,
  };
}
