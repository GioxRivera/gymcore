import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gymcore/config/config.dart' as config;

class MusculosLastimadosForm extends StatefulWidget {

  final Function(String) actualizarLesiones;
  final String musculosLastimados;
  final Function() regresarAnterior;

  MusculosLastimadosForm({
    required this.actualizarLesiones,
    required this.musculosLastimados,
    required this.regresarAnterior
  });

  @override
  State<MusculosLastimadosForm> createState() => _MusculosLastimadosFormState();
}

class _MusculosLastimadosFormState extends State<MusculosLastimadosForm> {

  bool bloquearBotonSiguiente = false;
  int? _selectedValue = 2;
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  List<String> partes = [];
  String partes_lastimadas = "";


  void _handleRadioValueChanged(int? value) {
    if(value == 2){
      partes_lastimadas = "No";
      bloquearBotonSiguiente = false;
    }
    else{
      if(!_isChecked1 && !_isChecked2 && !_isChecked3){
        bloquearBotonSiguiente = true;
      }
    }
    setState(() {
      _selectedValue = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('¿Tienes alguna lesión que te impida hacer algunos ejercicios?', style: TextStyle(color: HexColor(config.textoPrimario), fontSize: 22)),
            ),
            RadioListTile<int>(
              title: const Text('Sí'),
              value: 1,
              groupValue: _selectedValue,
              onChanged: _handleRadioValueChanged,
            ),
            (_selectedValue == 1)
            ? Container(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('¿En dónde tienes tus lesiones?', style: TextStyle(fontSize: 15)),
                    CheckboxListTile(
                      title: Text('Espalda'),
                      value: _isChecked1,
                      onChanged: (newValue) {
                        bool encontrarValor = false;
                        int indexEncontrado = 0;
                        for (var i=0; i<partes.length; i++) {
                          print(partes[i]);
                          if(partes[i] == 'Espalda'){
                            encontrarValor = true;
                            indexEncontrado = i;
                          }
                        }
                        if(!encontrarValor){
                          partes.add('Espalda');
                        }
                        else{
                          partes.removeAt(indexEncontrado);
                        }
                        setState(() {
                          _isChecked1 = newValue!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text('Rodillas'),
                      value: _isChecked2,
                      onChanged: (newValue) {
                        bool encontrarValor = false;
                        int indexEncontrado = 0;
                        for (var i=0; i<partes.length; i++) {
                          print(partes[i]);
                          if(partes[i] == 'Rodillas'){
                            encontrarValor = true;
                            indexEncontrado = i;
                          }
                        }
                        if(!encontrarValor){
                          partes.add('Rodillas');
                        }
                        else{
                          partes.removeAt(indexEncontrado);
                        }
                        setState(() {
                          _isChecked2 = newValue!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text('Hombros'),
                      value: _isChecked3,
                      onChanged: (newValue) {
                        bool encontrarValor = false;
                        int indexEncontrado = 0;
                        for (var i=0; i<partes.length; i++) {
                          print(partes[i]);
                          if(partes[i] == 'Hombros'){
                            encontrarValor = true;
                            indexEncontrado = i;
                          }
                        }
                        if(!encontrarValor){
                          partes.add('Hombros');
                        }
                        else{
                          partes.removeAt(indexEncontrado);
                        }
                        setState(() {
                          _isChecked3 = newValue!;
                        });
                      },
                    ),
                  ],
                )
              )
            : Container(),
            RadioListTile<int>(
              title: Text('No'),
              value: 2,
              groupValue: _selectedValue,
              onChanged: _handleRadioValueChanged,
            ),
            Image.asset('assets/formulario/codo.png', height: 150, width: 150),
            const SizedBox(height: 40),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.03
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: MaterialButton(
                    onPressed: () {
                      widget.regresarAnterior();
                    },
                    child: Container(
                      color: HexColor(config.fondoSecundario),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      child: Text('Anterior', style: TextStyle(color: HexColor(config.textoTerciario), fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: MaterialButton(
                    onPressed: () {
                      String lesiones = "";
                      //widget.actualizarLesiones();
                    },
                    child: Container(
                      color: (bloquearBotonSiguiente) ? HexColor(config.textoSecundario) : HexColor(config.fondoPrimario),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text('Siguiente', style: TextStyle(color: HexColor(config.textoTerciario), fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30)
          ],
        ),
      )
    );
  }
}