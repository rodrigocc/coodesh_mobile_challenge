import 'package:coodesh_mobile_challenge/data/fetch_patient_usecase.dart';
import 'package:coodesh_mobile_challenge/domain/entities/patient.dart';
import 'package:coodesh_mobile_challenge/domain/repositories/fetch_patient_repository.dart';
import 'package:coodesh_mobile_challenge/domain/usecases/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFetchPatientRepository extends Mock
    implements IFetchPatientRepository {}

void main() {
  late FetchPatientUseCase useCase;
  late IFetchPatientRepository repository;

  setUp(() {
    repository = MockFetchPatientRepository();

    useCase = FetchPatientUseCase(repository: repository);
  });

  const int userLimit = 50;

  test('Deve retornar uma Lista de Pacientes ', () async {
    when(() => repository.fetchPatientsByLimit(any()))
        .thenAnswer((_) async => const Right(<PatientEntity>[]));

    final result = await useCase.fetchPatientsByLimit(userLimit);

    expect(result, const Right(<PatientEntity>[]));

    verify(() => repository.fetchPatientsByLimit(any()));
  });

  // test('Deve retornar uma Failure quando não for bem sucedido', () async {
  //   when(() => repository.fetchPatientsByLimit(any())).thenAnswer(
  //       (_) async => Left<Failure, List<PatientEntity>>(ServerFailure()));
  //   final result = await useCase.fetchPatientsByLimit(0);

  //   expect(result, Left(ServerFailure()));

  //   verify(() => repository);

  //   // verify(() => repository.fetchPatientsByLimit(any()));
  // });
}
