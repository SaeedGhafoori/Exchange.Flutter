import 'package:course_a_flutter/ui/ui_helper/ThemeSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, ]
  );
  runApp(const MyMaterialApp());
}

class MyMaterialApp extends StatefulWidget {
  const MyMaterialApp({Key? key}) : super(key: key);
  @override
  _MyMaterialAppState createState() => _MyMaterialAppState();
}

class _MyMaterialAppState extends State<MyMaterialApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            actions: [
              ThemeSwitcher()
            ],
            centerTitle: true,
            title: const Text('ExchangeBS',style: TextStyle(color: Colors.white),),
          ),
          body: Container(),
        ),
      ),
    );
  }

}