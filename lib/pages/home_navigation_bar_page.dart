import 'package:codeband_udea/pages/five_band_resistence.dart';
import 'package:codeband_udea/pages/resistance_calculator.dart';
import 'package:codeband_udea/pages/six_band_resistence.dart';
import 'package:flutter/material.dart';

class HomeNavigationBarPage extends StatefulWidget {
  const HomeNavigationBarPage({super.key});

  @override
  State<HomeNavigationBarPage> createState() => _HomeNavigationBarPageState();
}

class _HomeNavigationBarPageState extends State<HomeNavigationBarPage> {
  int _selectedIndex = 0; //es el numero de paginas se va de 0 a 3
  static const List<Widget> _widgetOptions =[
    ResistanceCalculator(),
    FiveBandResistence(),
    SixBandResistence(),
  ]; // arreglo de widgets, se colocan las paginas
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });// cambia el estado
  }// al hacer click en la barra
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculo de resistencia"),
        backgroundColor: Colors.black87,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),

      ),//carga la pagina segun la eleccion
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_4),
            label: "4 Bandas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_5),
            label: "5 Bandas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_6),
            label: "6 Bandas",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
