import 'package:animals_app_task/core/helper/api_result.dart';
import 'package:animals_app_task/data/repo/cat_breeds_repo.dart';
import 'package:animals_app_task/presentation/cubit/cat_breeds_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatBreedsCubit extends Cubit<CatBreedsState> {
  final CatBreedsRepo _catBreedsRepo;

  CatBreedsCubit(this._catBreedsRepo) : super(const CatBreedsState.initial());

  Future<void> getAllCatBreeds() async {
    emit(const CatBreedsState.loading());
    final response = await _catBreedsRepo.getAllBreeds();
    response.when(
      success: (catBreeds) {
        emit(CatBreedsState.catBreedsLoaded(catBreeds));
      },
      failure: (error) {
        emit(CatBreedsState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
