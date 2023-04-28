import 'package:chefkart/route_generator.dart';
import 'package:chefkart/screens/home_screen.dart';
import 'package:chefkart/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChefKart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        primarySwatch: Colors.orange,
        fontFamily: 'DMSans',
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      onGenerateRoute: RouteGenerator.generateRoute,
      builder: EasyLoading.init(),
    );
  }
}
