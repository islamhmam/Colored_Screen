import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_layout.dart';

void main() {
WidgetsFlutterBinding.ensureInitialized();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Screen',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}



//