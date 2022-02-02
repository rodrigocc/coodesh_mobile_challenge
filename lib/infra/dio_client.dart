import 'package:coodesh_mobile_challenge/infra/http_service_interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioClient implements IHttpService {
  final Dio dio;

  DioClient()
      : dio = Dio(BaseOptions(
          baseUrl: dotenv.get('BASE_URL'),
        ));

  @override
  Future<dynamic> get(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}
