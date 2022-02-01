import 'package:coodesh_mobile_challenge/infra/http_service_interface.dart';
import 'package:dio/dio.dart';

class DioClient implements IHttpService {
  final Dio dio;

  const DioClient(this.dio);

  @override
  Future<dynamic> get(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}
