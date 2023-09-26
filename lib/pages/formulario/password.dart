import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gymcore/config/config.dart' as config;

class PasswordForm extends StatefulWidget {

  final Function(String) actualizarPassword;
  final String password;

  PasswordForm({
    required this.actualizarPassword,
    required this.password
  });

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {

  bool mostrarPassword = false;
  bool mostrarPasswordRepetir = false;
  dynamic snapshotPassword = null;
  dynamic snapshotPasswordRepetir = null;
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerPasswordRepetir = TextEditingController();
  bool bloquearBotonSiguiente = true;

  @override
  void initState() {
    super.initState();

    if(widget.password.isNotEmpty){
      controllerPassword.text = widget.password;
      controllerPasswordRepetir.text = widget.password;
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
            Text('Cambia tu contraseña:', style: TextStyle(color: HexColor(config.textoPrimario), fontSize: 22)),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                cursorColor: HexColor(config.textoPrimario),
                controller: controllerPassword,
                onChanged: (value) {
                  isPasswordValid(value);
                  isPasswordRepeatValid(controllerPasswordRepetir.text);
                  setState(() {});

                  if(snapshotPassword == null && snapshotPasswordRepetir == null && controllerPassword.text.isNotEmpty && controllerPasswordRepetir.text.isNotEmpty){
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
                obscureText: (mostrarPassword) ? false : true,
                decoration: decoracionInputs(snapshotPassword, 'Contraseña', '******', Icons.lock)
              )
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                cursorColor: HexColor(config.textoPrimario),
                controller: controllerPasswordRepetir,
                onChanged: (value) {
                  isPasswordRepeatValid(value);
                  setState(() {});

                  if(snapshotPassword == null && snapshotPasswordRepetir == null && controllerPassword.text.isNotEmpty && controllerPasswordRepetir.text.isNotEmpty){
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
                obscureText: (mostrarPasswordRepetir) ? false : true,
                decoration: decoracionInputs(snapshotPasswordRepetir, 'Repetir contraseña', '******', Icons.lock)
              )
            ),
            Image.asset('assets/formulario/cerrar-con-llave.png', height: 150, width: 150),
            const SizedBox(height: 40),
            MaterialButton(
              onPressed: () {
                if(!bloquearBotonSiguiente){
                  widget.actualizarPassword(controllerPassword.text);
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
      suffix: (label == "Contraseña")
      ? InkWell(
          onTap: () {
            mostrarPassword = !mostrarPassword;
            setState(() {});
          },
          child: Icon((mostrarPassword) ? Icons.visibility_off : Icons.visibility, color: HexColor(config.fondoSecundario)),
        )
      : (label == "Repetir contraseña") 
        ? InkWell(
            onTap: () {
              mostrarPasswordRepetir = !mostrarPasswordRepetir;
              setState(() {});
            },
            child: Icon((mostrarPasswordRepetir) ? Icons.visibility_off : Icons.visibility, color: HexColor(config.fondoSecundario)),
          )
        : null,
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
      snapshotPassword = null;
    }
    else{
      snapshotPassword = textoAlerta;
    }
  }



  void isPasswordRepeatValid(String password){
    if(password != controllerPassword.text){
      snapshotPasswordRepetir = "Las contraseñas deben ser iguales";
    }
    else{
      snapshotPasswordRepetir = null;
    }
  }
  
}