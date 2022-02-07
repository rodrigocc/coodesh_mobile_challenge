import 'package:coodesh_mobile_challenge/domain/entities/patient.dart';
import 'package:coodesh_mobile_challenge/domain/usecases/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class IFetchPatientRepository {
  Future<Either<Failure, List<Results>>> fetchPatientsByLimit(int userLimit);
}
