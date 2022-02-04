import 'package:coodesh_mobile_challenge/infra/http_service_interface.dart';
import 'package:dio/dio.dart';

class DioClient implements IHttpService {
  static const baseUrl = 'https://randomuser.me/api/';

  final Dio dio;

  DioClient() : dio = Dio(BaseOptions(baseUrl: baseUrl));

  @override
  Future<dynamic> get(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}
