import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gymcore/config/config.dart' as config;

class Nickname extends StatefulWidget {
  @override
  State<Nickname> createState() => _NicknameState();
}

class _NicknameState extends State<Nickname> {

  dynamic snapshotNickname = null;
  TextEditingController controllerNickname = TextEditingController();
  bool bloquearBotonSiguiente = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text('Crea un nombre de usuario:', style: TextStyle(color: HexColor(config.textoPrimario), fontSize: 22)),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                cursorColor: HexColor(config.textoPrimario),
                controller: controllerNickname,
                onChanged: (value) {
                  isPasswordValid(value);
                  setState(() {});

                  if(snapshotNickname == null && controllerNickname.text.isNotEmpty){
                    bloquearBotonSiguiente = false;
                  }
                  else{
                    bloquearBotonSiguiente = true;
                  }
                  setState(() {});
                },
                style: TextStyle(
                  color: HexColor(config.textoPrimario)
                ),
                decoration: decoracionInputs(snapshotNickname, 'Contraseña', '******', Icons.lock)
              )
            ),
            Image.asset('assets/formulario/perfil-del-usuario.png', height: 150, width: 150),
            const SizedBox(height: 40),
            MaterialButton(
              onPressed: () {
                if(!bloquearBotonSiguiente){
                  //widget.actualizarPassword(controllerNickname.text);
                }
              },
              child: Container(
                color: (bloquearBotonSiguiente) ? HexColor(config.textoSecundario) : HexColor(config.fondoPrimario),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                child: Text('Siguiente', style: TextStyle(color: HexColor(config.textoTerciario), fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 30)
          ],
        ),
      )
    );
  }





  InputDecoration decoracionInputs(String snapshot, String label, String hint, IconData icon) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      hintStyle: const TextStyle(
        color: Colors.blueGrey
      ),
      border: const OutlineInputBorder(),
      errorText: snapshot,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: HexColor(config.fondoSecundario),
          width: 2
        )
      ),
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




  void isPasswordValid(String password) {
    String textoAlerta = "";
    bool longitud = false;
    bool mayuscula = false;
    bool minuscula = false;
    bool numero = false;
    bool caracter = false;

    if (password.length >= 8) {
      longitud = true; 
    }
    if (password.contains(RegExp(r'[A-Z]'))) {
      mayuscula = true; 
    }
    if (password.contains(RegExp(r'[a-z]'))) {
      minuscula = true; 
    }
    if (password.contains(RegExp(r'[0-9]'))) {
      numero = true; 
    }
    if (password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      caracter = true; 
    }

    if(!longitud || !mayuscula || !minuscula || !numero || !caracter){
      textoAlerta = textoAlerta + 'La contraseña debe contener:\n';
      if(!longitud){textoAlerta = textoAlerta + ' - Una longitud de 8\n';}
      if(!mayuscula){textoAlerta = textoAlerta + ' - Una mayúscula\n';}
      if(!minuscula){textoAlerta = textoAlerta + ' - Una minúscula\n';}
      if(!numero){textoAlerta = textoAlerta + ' - Un número\n';}
      if(!caracter){textoAlerta = textoAlerta + ' - Un caracter\n';}
    }

    if(textoAlerta == ""){
      snapshotNickname = null;
    }
    else{
      snapshotNickname = textoAlerta;
    }
  }
}