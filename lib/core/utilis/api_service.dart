import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1/';

  ApiService(this.dio);

  Future get({required String endPoint}) async {
    var response = await dio.get('$baseUrl$endPoint');
    return response;
  }
}
