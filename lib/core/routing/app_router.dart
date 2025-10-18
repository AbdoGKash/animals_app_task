import 'package:animals_app_task/core/helper/injection.dart';
import 'package:animals_app_task/data/model/cat.dart';
import 'package:animals_app_task/presentation/cubit/cat_breeds_cubit.dart';
import 'package:animals_app_task/presentation/cubit/fav_car_cubit.dart';
import 'package:animals_app_task/presentation/screens/favorite_screen.dart';
import 'package:animals_app_task/presentation/screens/home.dart';
import 'package:animals_app_task/presentation/screens/pet_details_screen.dart';
import 'package:animals_app_task/presentation/screens/splash.dart';
import 'package:animals_app_task/presentation/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'routers_name.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutersName.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RoutersName.onboarding:
        return MaterialPageRoute(builder: (_) => const Onboarding());
      case RoutersName.mainScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<CatBreedsCubit>()..getAllCatBreeds(),
              ),
              BlocProvider(create: (context) => getIt<FavoritesCubit>()),
            ],
            child: const MainScreen(),
          ),
        );

      case RoutersName.detailsPet:
        final cat = settings.arguments as Cat;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<FavoritesCubit>(),
            child: PetDetailsScreen(cat: cat),
          ),
        );

      case RoutersName.favoritesPet:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<FavoritesCubit>(),
            child: const FavoritesScreen(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("No Route Found"))),
        );
    }
  }
}
