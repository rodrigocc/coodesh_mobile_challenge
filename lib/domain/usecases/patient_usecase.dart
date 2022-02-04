import 'package:coodesh_mobile_challenge/domain/entities/patient.dart';
import 'package:dartz/dartz.dart';

import 'errors/failure.dart';

abstract class PatientUseCase {
  Future<Either<Failure, List<Results>>> fetchPatientsByLimit(int userLimit);
}
