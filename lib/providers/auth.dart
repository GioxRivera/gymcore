import 'dart:convert';

import 'package:gymcore/providers/db.general.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:gymcore/config/config.dart' as config;

import '../model/auth_model.dart';
import '../services/auth_service.dart';

class AuthProvider {
  final storage = const FlutterSecureStorage();

  Future<Map<String, dynamic>> login(String? email, String? password) async {
    final response = await http.post(
      Uri.parse('${config.servidor}/api/auth?email=$email&password=$password'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{}),
    );
    print(response);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      Auth auth = Auth();

      String error = findError(jsonDecode(response.body));
      if (error != '') {
        return {'error': error, 'token': ''};
      }

      auth = Auth.fromJson(jsonDecode(response.body));


      await storage.write(key: 'email', value: email);
      await storage.write(key: 'password', value: password);
      await storage.write(key: 'token', value: auth.token);
      await storage.write(key: 'user', value: jsonEncode(auth.toJson()));
      
      return {'error': '', 'token': auth.token};
    }

    return {'error': 'Conection', 'token': ''};
  }

  
  String findError(Map<String, dynamic> json) {
    String error = '';

    if (json.containsKey('error')) {
      var errors = json["error"] as List;
      errors.forEach((element) {
        if (element['message'] != '') error = element['message'];
      });
    }
    return error;
  }

  Future<Map<String, dynamic>> getUser() async {
    Auth auth = Auth();
    FlutterSecureStorage storage = new FlutterSecureStorage();
    String? value = await storage.read(key: 'user');
    String? servidor = await storage.read(key: 'servidor');
    if (value == null || value == '') {
      return {'error': false};
    } else {
    auth = Auth.fromJson2(jsonDecode(value));

      final response = await http.get(
        Uri.parse('$servidor/api/user'),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "Authorization": 'Bearer ' + auth.token
        },
      );
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return {'error': true};
      }
    }

    return {'error': false};
  }



  Future<Map<String, dynamic>> crear_cuenta(String? nombreCuenta, String? nombre, String? email, String? password, String? servidor) async {
    final response = await http.post(
      Uri.parse('$servidor/api/gratuita?nombre_cuenta=$nombreCuenta&email=$email&nombre=$nombre&password=$password'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{}),
    );
    print(response);

    if (response.statusCode >= 200 && response.statusCode < 300) {

      String error = findError(jsonDecode(response.body));
      if (error != '') {
        return {'error': error};
      }

      return {'error': ''};
    }

    return {'error': 'Conexión'};
  }







  Future<Map<String, dynamic>> eliminarCuentasGratuitas(BuildContext context) async {
    Auth auth = Auth();
    FlutterSecureStorage storage = FlutterSecureStorage();
    String? value = await storage.read(key: 'user');
    String? servidor = await storage.read(key: 'servidor');
    auth = Auth.fromJson2(jsonDecode(value ?? ""));

    final authService = new AuthService();

    final response = await http.delete(
      Uri.parse('$servidor/api/cuenta/${auth.idCuenta}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        "Authorization": 'Bearer '+auth.token
      },
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      Auth auth = Auth();
      authService.logout(context);
      return {'error': ''};
    }

    return {'error': 'Hubo un error para eliminar la cuenta, intente de nuevo y revise su internet'};
  }
}



