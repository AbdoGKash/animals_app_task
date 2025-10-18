import 'package:animals_app_task/core/helper/api_error_handler.dart';
import 'package:animals_app_task/core/helper/api_result.dart';
import 'package:animals_app_task/data/model/cat.dart';
import 'package:animals_app_task/data/networking/api_service.dart';

class CatBreedsRepo {
  final ApiService _apiService;

  CatBreedsRepo(this._apiService);

  Future<ApiResult<List<Cat>>> getAllBreeds() async {
    try {
      final response = await _apiService.getAllBreeds();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
