import 'package:coodesh_mobile_challenge/data/models/patient_model.dart';

abstract class IFetchPatientDataSource {
  Future<List<PatientModel>> fetchPatientsByLimit(int limit);
}
