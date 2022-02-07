import 'package:coodesh_mobile_challenge/data/datasources/fetch_patient_datasoruce.dart';
import 'package:coodesh_mobile_challenge/domain/entities/patient.dart';
import 'package:coodesh_mobile_challenge/domain/repositories/fetch_patient_repository.dart';
import 'package:coodesh_mobile_challenge/domain/usecases/errors/failure.dart';
import 'package:coodesh_mobile_challenge/infra/http_service_interface.dart';
import 'package:dartz/dartz.dart';

class FetchPatientRepositoryImpl implements IFetchPatientRepository {
  // final IHttpService httpService;

  final IFetchPatientDataSource dataSource;

  FetchPatientRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, List<PatientEntity>>> fetchPatientsByLimit(
      int userLimit) async {
    // TODO: implement fetchPatientsByLimit
    throw UnimplementedError();
  }
}
