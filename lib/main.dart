import 'package:first_app/App/core/color.dart';
import 'package:first_app/App/view/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "First Design App",
      debugShowCheckedModeBanner: false,
      // home: const DashboardPage(),
      home:  MainScreen(),
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
          background: appBackgroundColor,
        ),
      ),
    );
  }
}
