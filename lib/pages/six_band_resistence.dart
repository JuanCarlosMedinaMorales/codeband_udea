import 'dart:math';

import 'package:flutter/material.dart';

enum Col{Negro, Marron, Rojo, Naranja, Amarilla, Verde, Azul,Purpura, Gris, Blanco}
enum ColP{Marron, Rojo, Dorado, Plateado}
enum PPM{Blanco, Purpura, Azul, Naranja, Amarillo, Rojo, Marron}
enum ColM{Negro, Marron, Rojo, Naranja, Amarilla ,Dorado, Plateado}

class SixBandResistence extends StatefulWidget {
  const SixBandResistence({super.key});

  @override
  State<SixBandResistence> createState() => _SixBandResistenceState();
}

class _SixBandResistenceState extends State<SixBandResistence> {
  double Resistencia = 0;
  Col? _Color1 = Col.Marron;
  Col? _Color2 = Col.Negro;
  Col? _Color3 = Col.Negro;
  ColP? _Color4 = ColP.Marron;
  ColM? _Color5 = ColM.Negro;
  PPM? _Color6 = PPM.Marron;

  double valor1 = 0;
  double valor2 = 0;
  double valor3 = 0;
  double valor4 = 0;
  double valor5 = 0;
  double valor6 = 0;
  double percent = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(//imagen de fondo
            child: Image.asset(
              'assets/images/F.png',
              fit: BoxFit.cover, //para ajustar la imagen
            ),
          ), //Fondo
          Padding(
            padding: const EdgeInsets.all(35),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/images/JJR.png"),
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButton(
                            items: const[
                              //DropdownMenuItem(child: Text("Negro"), value: Col.Negro,),
                              DropdownMenuItem(child: Text("Marrón"), value: Col.Marron,),
                              DropdownMenuItem(child: Text("Rojo"), value: Col.Rojo,),
                              DropdownMenuItem(child: Text("Naranja"), value: Col.Naranja,),
                              DropdownMenuItem(child: Text("Amarillo"), value: Col.Amarilla,),
                              DropdownMenuItem(child: Text("Verde"), value: Col.Verde,),
                              DropdownMenuItem(child: Text("Azul"), value: Col.Azul,),
                              DropdownMenuItem(child: Text("Purpura"), value: Col.Purpura,),
                              DropdownMenuItem(child: Text("Gris"), value: Col.Gris,),
                              DropdownMenuItem(child: Text("Blanco"), value: Col.Blanco,),
                            ],
                            value: _Color1,
                            onChanged: dropdownCallback,
                            iconEnabledColor: Colors.yellow,
                            dropdownColor: Colors.brown,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),

                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Primera banda de color",
                            style: const TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white
                            ),
                          ), // mensaje color 1,
                        ),
                      ],
                    ),//seleccionar el color 1
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButton(
                            items: const[
                              DropdownMenuItem(child: Text("Negro"), value: Col.Negro,),
                              DropdownMenuItem(child: Text("Marrón"), value: Col.Marron,),
                              DropdownMenuItem(child: Text("Rojo"), value: Col.Rojo,),
                              DropdownMenuItem(child: Text("Naranja"), value: Col.Naranja,),
                              DropdownMenuItem(child: Text("Amarillo"), value: Col.Amarilla,),
                              DropdownMenuItem(child: Text("Verde"), value: Col.Verde,),
                              DropdownMenuItem(child: Text("Azul"), value: Col.Azul,),
                              DropdownMenuItem(child: Text("Purpura"), value: Col.Purpura,),
                              DropdownMenuItem(child: Text("Gris"), value: Col.Gris,),
                              DropdownMenuItem(child: Text("Blanco"), value: Col.Blanco,),
                            ],
                            value: _Color2,
                            onChanged: dropdownCallback2,
                            iconEnabledColor: Colors.yellow,
                            dropdownColor: Colors.brown,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),

                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Segunda banda de color",
                            style: const TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white
                            ),
                          ), // mensaje color 2,
                        ),
                      ],
                    ),//seleccionar el color 2
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButton(
                            items: const[
                              DropdownMenuItem(child: Text("Negro"), value: Col.Negro,),
                              DropdownMenuItem(child: Text("Marrón"), value: Col.Marron,),
                              DropdownMenuItem(child: Text("Rojo"), value: Col.Rojo,),
                              DropdownMenuItem(child: Text("Naranja"), value: Col.Naranja,),
                              DropdownMenuItem(child: Text("Amarillo"), value: Col.Amarilla,),
                              DropdownMenuItem(child: Text("Verde"), value: Col.Verde,),
                              DropdownMenuItem(child: Text("Azul"), value: Col.Azul,),
                              DropdownMenuItem(child: Text("Purpura"), value: Col.Purpura,),
                              DropdownMenuItem(child: Text("Gris"), value: Col.Gris,),
                              DropdownMenuItem(child: Text("Blanco"), value: Col.Blanco,),
                            ],
                            value: _Color3,
                            onChanged: dropdownCallback3,
                            iconEnabledColor: Colors.yellow,
                            dropdownColor: Colors.brown,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),

                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Tercera banda de color",
                            style: const TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white
                            ),
                          ), // mensaje color 3,
                        ),
                      ],
                    ),//seleccionar el color 3
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButton(
                            items: const[
                              DropdownMenuItem(child: Text("Negro"), value: ColM.Negro,),
                              DropdownMenuItem(child: Text("Marrón"), value: ColM.Marron,),
                              DropdownMenuItem(child: Text("Rojo"), value: ColM.Rojo,),
                              DropdownMenuItem(child: Text("Naranja"), value: ColM.Naranja,),
                              DropdownMenuItem(child: Text("Amarillo"), value: ColM.Amarilla,),
                              DropdownMenuItem(child: Text("Dorado"), value: ColM.Dorado,),
                              DropdownMenuItem(child: Text("Plateado"), value: ColM.Plateado,),
                            ],
                            value: _Color5,
                            onChanged: dropdownCallback5,
                            iconEnabledColor: Colors.yellow,
                            dropdownColor: Colors.brown,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),

                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Cuarta banda de color",
                            style: const TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white
                            ),
                          ), // mensaje color 3,
                        ),
                      ],
                    ),//seleccionar el color 5
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButton(
                            items: const[
                              DropdownMenuItem(child: Text("Marrón"), value: ColP.Marron,),
                              DropdownMenuItem(child: Text("Rojo"), value: ColP.Rojo,),
                              DropdownMenuItem(child: Text("Dorado"), value: ColP.Dorado,),
                              DropdownMenuItem(child: Text("Plateado"), value: ColP.Plateado,),
                            ],
                            value: _Color4,
                            onChanged: dropdownCallback4,
                            iconEnabledColor: Colors.yellow,
                            dropdownColor: Colors.brown,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),

                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Quinta banda de color",
                            style: const TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white
                            ),
                          ), // mensaje color 4,
                        ),
                      ],
                    ),//seleccionar el color 4
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButton(
                            items: const[
                              DropdownMenuItem(child: Text("Blanco"), value: PPM.Blanco,),
                              DropdownMenuItem(child: Text("Purpura"), value: PPM.Purpura,),
                              DropdownMenuItem(child: Text("Azul"), value: PPM.Azul,),
                              DropdownMenuItem(child: Text("Naranja"), value: PPM.Naranja,),
                              DropdownMenuItem(child: Text("Amarillo"), value: PPM.Amarillo,),
                              DropdownMenuItem(child: Text("Rojo"), value: PPM.Rojo,),
                              DropdownMenuItem(child: Text("Marrón"), value: PPM.Marron,),
                            ],
                            value: _Color6,
                            onChanged: dropdownCallback6,
                            iconEnabledColor: Colors.yellow,
                            dropdownColor: Colors.brown,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),

                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Sexta banda de color",
                            style: const TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white
                            ),
                          ), // mensaje color 4,
                        ),
                      ],
                    ),//seleccionar el color 6
                    SizedBox(height: 20,),
                    Text(
                      "El valor de la resistencia es $Resistencia Ohms $percent % $valor6 ppm",
                      style: const TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          color: Colors.white
                      ),
                    ), // el valor de la resistencia,
                    SizedBox(height: 50,),

                  ],
                ),
              ),
            ),
          ),
        ],

      ),

    );
  }
  void dropdownCallback (Col? selectedValue){
    if (selectedValue is Col){
      setState((){
        _Color1= selectedValue;
        valor1= (100 * selectedValue.index).toDouble();
        _onConverterButtonClicked(); //calcula la resistencia

      });
    };

  }//cambia el color seleccionado
  void dropdownCallback2 (Col? selectedValue){
    _Color2= selectedValue;
    if (selectedValue is Col){
      setState((){
        valor2= (10 * selectedValue.index).toDouble();
        _onConverterButtonClicked(); //calcula la resistencia
      });
    };

  }//cambia el color seleccionado
  void dropdownCallback3 (Col? selectedValue){
    if (selectedValue is Col){
      _Color3= selectedValue;
      setState((){
        valor2= (selectedValue.index).toDouble();
        _onConverterButtonClicked(); //calcula la resistencia
      });
    };
  }//cambia el color seleccionado
  void dropdownCallback5 (ColM? selectedValue){
    if (selectedValue is ColM){
      _Color5= selectedValue;
      setState((){
        int indice = selectedValue.index;
        if(indice<=4){
          valor5= pow(10,indice).toDouble();
        }else if(indice == 5){
          valor3 = 0.1;
        } else{
          valor3 = 0.01;
        }

        _onConverterButtonClicked(); //calcula la resistencia
      });
    };
  }//cambia el color seleccionado
  void dropdownCallback4 (ColP? selectedValue){
    if (selectedValue is ColP){
      _Color4= selectedValue;
      setState((){
        _onConverterButtonClicked(); //calcula la resistencia
        int indice = selectedValue.index;
        switch(indice){
          case 0:
            percent = 1;
          case 1:
            percent = 2;
          case 2:
            percent = 5;
          case 3:
            percent = 10;
          default:
            percent = 0;
        }
      });
    };
  }// cambia el porcentaje
  void dropdownCallback6 (PPM? selectedValue){
    if (selectedValue is PPM){
      _Color6= selectedValue;
      setState((){
        _onConverterButtonClicked(); //calcula la resistencia
        int indice = selectedValue.index;
        switch(indice){
          case 0:
            valor6 = 1;
          case 1:
            valor6 = 5;
          case 2:
            valor6 = 10;
          case 3:
            valor6 = 15;
          case 4:
            valor6 = 25;
          case 5:
            valor6 = 50;
          case 6:
            valor6 = 100;
          default:
            percent = 0;
        }
      });
    };
  }// cambia el PPM
  void _onConverterButtonClicked(){
    setState(() {
      Resistencia= (valor1 + valor2 + valor3) * valor5;
    });
  }
}
