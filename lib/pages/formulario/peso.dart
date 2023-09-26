import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gymcore/config/config.dart' as config;

class PesoForm extends StatefulWidget {

  final Function(double) actualizarPeso;
  final double peso;
  final Function() regresarAnterior;

  PesoForm({
    required this.actualizarPeso,
    required this.peso,
    required this.regresarAnterior
  });

  @override
  State<PesoForm> createState() => _PesoFormState();
}

class _PesoFormState extends State<PesoForm> {

  TextEditingController controllerPeso = TextEditingController();
  bool bloquearBotonSiguiente = true;
  dynamic snapshotPeso = null;

  @override
  void initState() {
    super.initState();
    if(widget.peso > 0){
      controllerPeso.text = '${widget.peso}';
      bloquearBotonSiguiente = false;
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
            Text('¿Cuál es tu peso?', style: TextStyle(color: HexColor(config.textoPrimario), fontSize: 22)),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.1
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      autocorrect: false,
                      controller: controllerPeso,
                      cursorColor: HexColor(config.textoPrimario),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      onChanged: (value) {
                        if(value.isNotEmpty){
                          if(value.contains(RegExp(r'[!@#$%^&*(),?":{}|<>]'))){
                            bloquearBotonSiguiente = true;
                            snapshotPeso = "No se admiten caracteres especiales en esta respuesta";
                          }
                          else{
                            bloquearBotonSiguiente = false;
                            snapshotPeso = null;
                          }
                        }
                        else{
                          bloquearBotonSiguiente = true;
                        }
                        setState(() {});
                      },
                      style: TextStyle(
                        color: HexColor(config.textoPrimario)
                      ),
                      decoration: decoracionInputs(snapshotPeso, 'Kilos', Icons.fitness_center),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  alignment: Alignment.centerLeft,
                  child: const Text('Kg', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                )
              ],
            ),
            const SizedBox(height: 20),
            Image.asset('assets/formulario/pesa-rusa.png', height: 150, width: 150),
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
                      if(!bloquearBotonSiguiente){
                        double peso = 0;
                        peso = double.parse(controllerPeso.text);
                        widget.actualizarPeso(peso);
                      }
                    },
                    child: Container(
                      color: (bloquearBotonSiguiente) ? HexColor(config.textoSecundario) : HexColor(config.fondoPrimario),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text('Siguiente', style: TextStyle(color: HexColor(config.textoTerciario), fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30)
          ],
        ),
      )
    );
  }


  InputDecoration decoracionInputs(String snapshot, String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      hintStyle: const TextStyle(
        color: Colors.blueGrey
      ),
      border: const OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: HexColor(config.fondoSecundario),
          width: 2
        )
      ),
      errorText: snapshot,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: HexColor(config.fondoPrimario),
          width: 2
        )
      ),
      labelStyle: const TextStyle(
        color: Colors.blueGrey
      ),
      prefixIcon: Icon(icon, color: HexColor(config.fondoSecundario),),
      
    );
  }
}