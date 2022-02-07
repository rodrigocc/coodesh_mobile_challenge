import 'package:coodesh_mobile_challenge/domain/entities/patient.dart';

class PatientModel extends PatientEntity {
  PatientModel({required List<Results> results}) : super(results: results);

  static PatientModel fromJson(Map<String, dynamic> json) {
    return PatientModel(results: json['results']);
  }
}
