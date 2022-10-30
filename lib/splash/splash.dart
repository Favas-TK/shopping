import 'package:flutter/material.dart';
import 'package:shopping/login/view/login.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    gotoLogin();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.network('https://s3u.tmimgcdn.com/1660587-1529074811857_2.jpg'),
    ));
  }

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) {
      return const Login();
    })));
  }
}
