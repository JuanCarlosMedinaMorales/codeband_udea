import 'package:codeband_udea/pages/Home_page.dart';
import 'package:codeband_udea/pages/home_navigation_bar_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    _closeSplash();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(//imagen de fondo
            child: Image.asset(
              'assets/images/RJJF.png',
              fit: BoxFit.cover, //para ajustar la imagen
            ),
          ),
          Center(
            child: Image(
              image: AssetImage("assets/images/JJR.png"),
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
  Future<void> _closeSplash() async{
    Future.delayed(const Duration(seconds: 2),() async{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }
}
