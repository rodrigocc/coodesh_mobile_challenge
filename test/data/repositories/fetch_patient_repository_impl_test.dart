import 'package:coodesh_mobile_challenge/data/datasources/fetch_patient_datasoruce.dart';
import 'package:coodesh_mobile_challenge/data/models/patient_model.dart';
import 'package:coodesh_mobile_challenge/data/repositories/fetch_patient_repository_impl.dart';
import 'package:coodesh_mobile_challenge/domain/entities/patient.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

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

  test('Deve retornar um ListPatientModel quando chamado o DataSource', () {
    when(() => dataSource.fetchPatientsByLimit(any()))
        .thenAnswer((_) async => tlistPatientModel);
  });
}
