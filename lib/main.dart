import 'package:flutter/material.dart';

import 'package:shopping/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const splash(),
      // routes:routes,
    );
  }
}
//  final Map<String, Widget Function(BuildContext)> routes ={
//  ScreenProduct.routeName:(_)=>ScreenProduct(productAxis:),
// };