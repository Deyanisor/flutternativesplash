import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';

import 'Model/restaurant_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://wsc.fabricasoftware.co")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  static ApiService create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return ApiService(dio);
  }

  // @GET("/api/clientes")
  // Future<List<TaskModel>> getTasks();

  @GET("/api/especialidad")
  Future<EspecilidadModel> getTasks();
}
