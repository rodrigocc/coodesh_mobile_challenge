import 'package:coodesh_mobile_challenge/data/datasources/fetch_patient_datasource.dart';
import 'package:coodesh_mobile_challenge/data/models/patient_model.dart';
import 'package:coodesh_mobile_challenge/data/repositories/fetch_patient_repository_impl.dart';
import 'package:coodesh_mobile_challenge/domain/entities/patient.dart';
import 'package:coodesh_mobile_challenge/domain/usecases/errors/exceptions.dart';
import 'package:coodesh_mobile_challenge/domain/usecases/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks/user_limit_mock.dart';

class FetchPatientDataSourceMock extends Mock
    implements IFetchPatientDataSource {}

void main() {
  late FetchPatientRepositoryImpl repository;
  late IFetchPatientDataSource dataSource;

  setUp(() {
    dataSource = FetchPatientDataSourceMock();
    repository = FetchPatientRepositoryImpl(dataSource: dataSource);
  });

  final tlistPatientModel = [
    PatientModel(results: [
      Results(
          name: Name(first: 'Rodrigo'),
          gender: 'male',
          email: 'rodrigoasilvatest@gmail.com',
          location: Location(),
          dob: Dob(),
          id: Id(),
          phone: '999999',
          picture: Picture())
    ]),
  ];

  test('Deve retornar um ListßPatientModel quando chamado o DataSource', () {
    when(() => dataSource.fetchPatientsByLimit(any()))
        .thenAnswer((_) async => tlistPatientModel);

    final result = repository.fetchPatientsByLimit(tUserlimit);

    expect(result, Right(tlistPatientModel));

    verify(() => dataSource.fetchPatientsByLimit(tUserlimit)).called(1);
  });

  test(
      'Deve retornar um Server Failure quando chamada DataSource nao for bem Sucedida',
      () {
    when(() => dataSource.fetchPatientsByLimit(any()))
        .thenThrow(ServerException());

    final result = repository.fetchPatientsByLimit(tUserlimit);

    expect(result, Left(ServerFailure()));

    verify(() => dataSource.fetchPatientsByLimit(tUserlimit)).called(1);
  });
}
