import 'package:animals_app_task/core/helper/injection.dart';
import 'package:animals_app_task/core/routing/app_router.dart';
import 'package:animals_app_task/core/routing/routers_name.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initGetIt();
  runApp(const AnimalsApp());
}

class AnimalsApp extends StatelessWidget {
  const AnimalsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutersName.splash,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
