import 'package:flutter/material.dart';
import 'package:getco_traing/Screens/Home.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'Database/Hive DB/HiveDataBase.dart';
import 'Screens/Splashscreen.dart';

void main() async {
  //For Hive Database
  WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationCacheDirectory();
  Hive.init(directory.path);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 2),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blueAccent,
          surface: Colors.white,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 25, color: Colors.blueAccent),
        ),
      ),

      // ✅ First screen to open
      initialRoute: "/",

      // ✅ All routes
      routes: {
        "/": (context) => const SplashScreen(),
        "/HiveDatabase": (context) => HiveFormScreen(),
        "/ListView": (context) => Home(0),
        "/GridView": (context) => Home(1),
        "/AlertBox": (context) => Home(2),
        "/Counter": (context) => Home(3),
        "/InputScreen": (context) => Home(4),
        "/AudioScreen": (context) => Home(5),
      },
    );
  }
}
