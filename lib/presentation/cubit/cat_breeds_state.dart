import 'package:animals_app_task/data/model/cat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_breeds_state.freezed.dart';

@freezed
class CatBreedsState with _$CatBreedsState {
  const factory CatBreedsState.initial() = _Initial;
  const factory CatBreedsState.loading() = Loading;
  const factory CatBreedsState.catBreedsLoaded(List<Cat> cat) = CatBreedsLoaded;
  const factory CatBreedsState.error({required String error}) = Error;
}
