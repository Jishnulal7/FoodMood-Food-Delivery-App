import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/screens/home_screen.dart';
import 'package:food_delivery/utils/themes.dart';

void main() async {
  // Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: const [],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme(),
          home: const HomeScreen(),
        ));
  }
}
