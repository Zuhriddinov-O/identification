

import 'dart:io';

class Identify {
  int? id;
  String? name;
  String? surname;
  String? parentalName;
  String? phoneNumber;
  String? email;
  String? approvalDays;
  String? position;
  String? eduPosition;
  File? image;

  Identify({
    this.id,
    required this.name,
    required this.surname,
    required this.parentalName,
    required this.phoneNumber,
    required this.email,
    required this.approvalDays,
    required this.position,
    required this.eduPosition,
    required this.image,
  });
}
