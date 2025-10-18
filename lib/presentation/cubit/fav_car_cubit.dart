import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animals_app_task/data/model/cat.dart';
import 'package:animals_app_task/data/local/favorites_database.dart';

class FavoritesCubit extends Cubit<List<Cat>> {
  FavoritesCubit() : super([]) {
    _loadFavorites();
  }

  final db = FavoritesDatabase.instance;

  Future<void> _loadFavorites() async {
    final favoriteCats = await db.getFavorites();
    final cats = favoriteCats.map((fav) => fav.toCat()).toList();
    emit(cats);
  }

  Future<void> toggleFavorite(Cat cat) async {
    final currentFavorites = List<Cat>.from(state);
    final isFavorite = currentFavorites.any((item) => item.id == cat.id);

    if (isFavorite) {
      await db.removeFavorite(cat.id);
      currentFavorites.removeWhere((item) => item.id == cat.id);
    } else {
      final favoriteCat = FavoriteCat.fromCat(cat);
      await db.insertFavorite(favoriteCat);
      currentFavorites.add(cat);
    }

    emit(currentFavorites);
  }

  bool isFavorite(Cat cat) {
    return state.any((item) => item.id == cat.id);
  }
}
