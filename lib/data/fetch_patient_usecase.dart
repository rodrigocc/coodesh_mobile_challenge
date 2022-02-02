import 'package:coodesh_mobile_challenge/domain/entities/patient.dart';
import 'package:coodesh_mobile_challenge/domain/usecases/patient_usecase.dart';
import 'package:coodesh_mobile_challenge/infra/http_service_interface.dart';

class FetchPatientUseCase implements PatientUseCase {
  final IHttpService client;

  const FetchPatientUseCase({required this.client});

  @override
  Future<List<Patient>> fetchPatientsByLimit(int userLimit) async {
    final response = await client.get('?results=$userLimit');
    final body = response as List;
    final listPatients = body.map((json) => Patient.fromJson(json)).toList();
    return listPatients;
  }
}
