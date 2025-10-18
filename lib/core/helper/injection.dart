import 'package:animals_app_task/data/local/favorites_database.dart';
import 'package:animals_app_task/data/networking/api_service.dart';
import 'package:animals_app_task/data/repo/cat_breeds_repo.dart';
import 'package:animals_app_task/presentation/cubit/cat_breeds_cubit.dart';
import 'package:animals_app_task/presentation/cubit/fav_car_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  getIt.registerLazySingleton<ApiService>(
    () => ApiService(createAndSetupDio()),
  );
  getIt.registerLazySingleton<CatBreedsRepo>(() => CatBreedsRepo(getIt()));
  getIt.registerFactory<CatBreedsCubit>(() => CatBreedsCubit(getIt()));
  getIt.registerFactory<FavoritesDatabase>(() => FavoritesDatabase.instance);

  getIt.registerFactory<FavoritesCubit>(() => FavoritesCubit());
}

Dio createAndSetupDio() {
  Dio dio = Dio();
  dio
    ..options.connectTimeout = const Duration(seconds: 10)
    ..options.receiveTimeout = const Duration(seconds: 20);

  dio.interceptors.add(
    LogInterceptor(
      requestBody: true,
      error: true,
      requestHeader: true,
      responseHeader: true,
      request: true,
      responseBody: true,
    ),
  );
  return dio;
}
