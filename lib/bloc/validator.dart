import 'dart:async';

mixin Validators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern as String);

    if (regExp.hasMatch(email)) {
      sink.add(email);
    } else if (email.isEmpty) {
    } else {
      sink.addError('No es un correo valido');
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.isNotEmpty) {
      sink.add(password);
    } else if (password.isEmpty) {
    } else {
      sink.addError('Se requiere mas de 6 caracteres');
    }
  });



  final validateTextoFormulario =
      StreamTransformer<String, String>.fromHandlers(handleData: (texto, sink) {
    if (texto.length >= 1) {
      sink.add(texto);
    } else if (texto.length == 0) {
    } else {
      sink.addError('Se requiere más de 1 caracter');
    }
  });


  static String validateEmail2(String value) {
    Pattern pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";

    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value) || value == null) {
      return 'Email invalido';
    } else {
      return '';
    }
  }

  
}
