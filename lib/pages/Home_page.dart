import 'package:codeband_udea/pages/home_navigation_bar_page.dart';
import 'package:codeband_udea/pages/resistance_calculator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          ), //Fondo
          Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage("assets/images/JJR.png"),
                    width: 300,
                    height: 300,
                  ), // Logo
                  const SizedBox(height: 32),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          fontSize:30,
                          fontStyle: FontStyle.italic,
                          color: Colors.black
                      ),
                      backgroundColor: Color(0xFFFFD700), // Color oro
                      elevation: 20,
                    ),
                    onPressed: (){
                      _onRegisterButtonClicked();
                    },
                    child: const Text("Iniciar"),
                  ), // Boton para iniciar la app
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
  void _onRegisterButtonClicked(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeNavigationBarPage(),
      ),
    );

  }
}
