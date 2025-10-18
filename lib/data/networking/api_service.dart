import 'package:animals_app_task/data/model/cat.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://api.thecatapi.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/v1/breeds")
  Future<List<Cat>> getAllBreeds();
}
