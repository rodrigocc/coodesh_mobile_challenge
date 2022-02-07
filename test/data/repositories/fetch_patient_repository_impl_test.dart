import 'package:coodesh_mobile_challenge/data/datasources/fetch_patient_datasoruce.dart';
import 'package:coodesh_mobile_challenge/data/repositories/fetch_patient_repository_impl.dart';
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

  test('Deve retornar um PatientModel quando chamado o DataSource', () {});
}
