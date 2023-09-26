import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gymcore/config/config.dart' as config;

class EstaturaForm extends StatefulWidget {

  final Function(int) actualizarEstatura;
  final int estatura;
  final Function() regresarAnterior;

  EstaturaForm({
    required this.actualizarEstatura,
    required this.estatura,
    required this.regresarAnterior
  });

  @override
  State<EstaturaForm> createState() => _EstaturaFormState();
}

class _EstaturaFormState extends State<EstaturaForm> {

  int metrosSeleccionado = 1;
  List<int> selectOptionsMetros = [0, 1, 2];
  String centimetrosSeleccionado = '';
  List<String> selectOptionsCentimetros = [];

  @override
  void initState() {
    super.initState();
    for(int i=0; i<100; i++){
      if(i<10){
        selectOptionsCentimetros.add('0$i');
      }
      else{
        selectOptionsCentimetros.add('$i');
      }
      setState(() {});
    }

    if(widget.estatura > 0){
      int estatura_temp = 0;
      if(widget.estatura >= 200){
        metrosSeleccionado = 2;
        estatura_temp = widget.estatura - 200;
      }
      else if(widget.estatura >= 100){
        metrosSeleccionado = 1;
        estatura_temp = widget.estatura - 100;
      }
      else{
        metrosSeleccionado = 0;
        estatura_temp = widget.estatura;
      }

      if(estatura_temp < 10){
        centimetrosSeleccionado = '0$estatura_temp';
      }
      else{
        centimetrosSeleccionado = '$estatura_temp';
      }
    }else{
      centimetrosSeleccionado = '70';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text('¿Cuál es tu estatura?', style: TextStyle(color: HexColor(config.textoPrimario), fontSize: 22)),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.1
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  color: HexColor(config.fondoTerciario),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<int>(
                      dropdownColor: HexColor(config.textoTerciario),
                      value: metrosSeleccionado,
                      isExpanded: true,
                      iconSize: 36,
                      icon: Icon(Icons.arrow_drop_down, color: HexColor(config.textoPrimario),),
                      items: selectOptionsMetros.map(buildMenuItemMetros).toList(),
                      hint: const Text('Selecciona una opción'),
                      onChanged: (value){
                        setState(() {
                          metrosSeleccionado = value!;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Center(child: Text('.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  color: HexColor(config.fondoTerciario),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      dropdownColor: HexColor(config.textoTerciario),
                      value: centimetrosSeleccionado,
                      isExpanded: true,
                      iconSize: 36,
                      icon: Icon(Icons.arrow_drop_down, color: HexColor(config.textoPrimario),),
                      items: selectOptionsCentimetros.map(buildMenuItemCentimetros).toList(),
                      hint: const Text('Selecciona una opción'),
                      onChanged: (value){
                        setState(() {
                          centimetrosSeleccionado = value!;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Center(child: Text('metros', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                )
              ],
            ),
            const SizedBox(height: 20),
            Image.asset('assets/formulario/altura.png', height: 150, width: 150),
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
                      int estatura = 0;
                      estatura = metrosSeleccionado * 100;
                      int centimetrosEnteros = int.parse(centimetrosSeleccionado);
                      estatura = estatura + centimetrosEnteros;
                      print(estatura);
                      widget.actualizarEstatura(estatura);
                    },
                    child: Container(
                      color: HexColor(config.fondoPrimario),
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



  DropdownMenuItem<int> buildMenuItemMetros(int item) => DropdownMenuItem(
    value: item,
    child: Center(
      child: Text(
        '$item',
        style: TextStyle(fontSize: 15, color: HexColor(config.textoPrimario)),
      ),
    ),
  );


  DropdownMenuItem<String> buildMenuItemCentimetros(String item) => DropdownMenuItem(
    value: item,
    child: Center(
      child: Text(
        item,
        style: TextStyle(fontSize: 15, color: HexColor(config.textoPrimario)),
      ),
    ),
  );
}