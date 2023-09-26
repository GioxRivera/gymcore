import 'package:flutter/material.dart';
import 'package:gymcore/config/config.dart' as config;
import 'package:gymcore/pages/formulario/exportarFormulario.dart';
import 'package:hexcolor/hexcolor.dart';

class Formulario extends StatefulWidget {
  
  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {

  int index = 1;
  String passwordFinal = "";
  int estaturaFinal = 0;
  double pesoFinal = 0;
  String nivelEjercicio = "Principiante";
  String discapacidades = "";
  String objetivos = "";
  String musculosLastimados = "";
  

  void regresarAnterior(){
    index--;
    setState(() {});
  }

  void actualizarPassword(String password){
    passwordFinal = password;
    index = 2;
    setState(() {});
  }

  void actualizarEstatura(int estatura){
    estaturaFinal = estatura;
    index = 3;
    setState(() {});
  }

  void actualizarPeso(double peso){
    pesoFinal = peso;
    index = 4;
    setState(() {});
  }

  void actualizarLesiones(String lesiones){
    musculosLastimados = lesiones;
    index = 5;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(config.textoTerciario),
      appBar: AppBar(
        flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                HexColor(config.fondoPrimario),
                HexColor(config.realceSecundario).withOpacity(0.5)
              ],
            ),
          ),
        ),
        title: const Text('Formulario'),
      ),
      body: (index == 1)
        ? PasswordForm(actualizarPassword: actualizarPassword, password: passwordFinal)
        : (index == 2)
          ? EstaturaForm(actualizarEstatura: actualizarEstatura, estatura: estaturaFinal, regresarAnterior: regresarAnterior)
          : (index == 3)
            ? PesoForm(actualizarPeso: actualizarPeso, peso: pesoFinal, regresarAnterior: regresarAnterior)
            : (index == 4)
              ? MusculosLastimadosForm(actualizarLesiones: actualizarLesiones, musculosLastimados: musculosLastimados, regresarAnterior: regresarAnterior)
              : (index == 5)
                ? Nickname()
                : Container()
    );
  }



  

}