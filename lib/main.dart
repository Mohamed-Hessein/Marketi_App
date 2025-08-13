import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketia/core/network/cachehelper.dart';
import 'package:marketia/Features/Splash/Persention/view/Screens/Splash.dart';
import 'package:marketia/core/Router/appRouter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Approuter.generateRoute,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(scaffoldBackgroundColor: Colors.white),
      home: Splash(),
    );
  }
}
