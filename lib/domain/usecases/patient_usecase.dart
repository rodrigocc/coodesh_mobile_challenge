import 'package:coodesh_mobile_challenge/domain/entities/patient.dart';

abstract class PatientUseCase {
  Future<List<Patient>> fetchPatientsByLimit(int userLimit);
}
