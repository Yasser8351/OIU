import 'package:flutter/cupertino.dart';

class RegistrationModel {
  int? installmentId;
  

  RegistrationModel({
    @required this.installmentId,
   
  });

  factory RegistrationModel.fromJson(Map<String, dynamic> jsonData) {
    return RegistrationModel(
      installmentId: jsonData['installmentId'] ?? 0,
     
    );
  }
}

class RegistrationList {
  final List<dynamic> listRegistration;
  RegistrationList({required this.listRegistration});
  factory RegistrationList.fromJson(Map<String, dynamic> jsonData) {
    return RegistrationList(
      listRegistration: jsonData['registration'],
    );
  }
}
