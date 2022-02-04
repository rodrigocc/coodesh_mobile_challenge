import 'package:coodesh_mobile_challenge/domain/entities/patient.dart';
import 'package:coodesh_mobile_challenge/domain/repositories/fetch_patient_repository.dart';
import 'package:coodesh_mobile_challenge/domain/usecases/errors/failure.dart';
import 'package:coodesh_mobile_challenge/domain/usecases/patient_usecase.dart';

import 'package:dartz/dartz.dart';

class FetchPatientUseCase implements PatientUseCase {
  final IFetchPatientRepository repository;

  const FetchPatientUseCase({required this.repository});

  @override
  Future<Either<Failure, List<Results>>> fetchPatientsByLimit(
      int userLimit) async {
    return await repository.fetchPatientsByLimit(userLimit);
  }
}


//  final response = await client.get('?results=$userLimit');
//     final body = response as List<Map<String, dynamic>>;
//     final listPatients = body.map((json) => Results.fromJson(json)).toList();
//     return listPatients;
