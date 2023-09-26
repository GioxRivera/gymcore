import 'dart:convert';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:gymcore/model/auth_model.dart';
import 'package:gymcore/pages/escaner.dart';
import 'package:gymcore/pages/formulario/formulario.dart';
import 'package:gymcore/pages/home.dart';
import 'package:gymcore/pages/listadoEjercicios.dart';
import 'package:gymcore/utils/navigate.fade.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymcore/bloc/bloc.dart';
import 'package:gymcore/pages/pages.dart';
import 'package:gymcore/providers/auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gymcore/config/config.dart' as config;
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../model/login_model.dart';
import '../utils/toast.dart';

class Login extends StatefulWidget {
  static const String routeName = '/login';

  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userProvider = AuthProvider();
  bool hidePassword = true;
  bool isApiCallProcess = false;
  bool isButtonEnabled = true;
  bool isSendLoginForm = false;
  String status = 'loading';
  bool mostrarPassword = false;

  LoginRequestModel loginRequestModel = LoginRequestModel();

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  void dispose() {
    super.dispose();
  }

  init() async {
    String deviceToken = await getDeviceToken();
    print("#### TOKEN DEL DISPOSITIVO ####");
    print(deviceToken);
    print("##########################################################");
    //enviarTokenAlServidor(deviceToken);
  }

  Future<void> enviarTokenAlServidor(String token) async {
    final url = 'http://';
    final response = await http.post(
      Uri.parse(url),
      body: {'token': token},
    );

    if (response.statusCode == 200) {
      print('Token enviado al servidor con éxito');
    } else {
      print('Error al enviar el token al servidor');
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: HexColor(config.fondoPrimario),
        body: BlocBuilder<LoginUserBloc, LoginUserState>(
            buildWhen: (previous, current) {
          if (previous.emailController != current.emailController ||
              previous.passwordController != current.passwordController) {
            return true;
          }
          return false;
        }, builder: (context, state) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Colors.transparent,
                    HexColor(config.realceSecundario).withOpacity(0.5),
                  ],
                )),
              ),
              SafeArea(
                child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 30),
                    child: Image.asset('assets/logo-blanco-sin-letras.png',
                        height: 100, width: 100)),
              ),
              _inputs(state),
            ],
          );
        }),
      ),
    );
  }

  Widget _inputs(LoginUserState state) {
    final loginBloc = BlocProvider.of<LoginUserBloc>(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 150,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
              decoration: BoxDecoration(
                  color: HexColor(config.principal),
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: Column(
                children: [
                  Text('Bienvenido a GYM CORE',
                      style: TextStyle(
                          color: HexColor(config.fondoPrimario),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text('Inicio de sesión',
                      style: TextStyle(
                          color: HexColor(config.fondoSecundario),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  _crearCorreo(loginBloc, state),
                  _crearPassword(loginBloc, state),
                  const SizedBox(height: 20),
                  _botonIngresar(loginBloc, state),
                  const SizedBox(height: 40),
                  MaterialButton(
                    color: HexColor(config.realce),
                    child: const Text('¿Olvidaste tu contraseña?'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _botonIngresar(LoginUserBloc bloc, LoginUserState state) {
    return Container(
      //decoration: ThemeHelper().buttonBoxDecoration(context),
      child: StreamBuilder(
          stream: bloc.formValidStream,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return (!isSendLoginForm)
                ? ElevatedButton(
                    //style: ThemeHelper().buttonStyle(),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Text(
                        'Ingresar'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    /*onPressed: (snapshot.hasData && isButtonEnabled)
                    ? () => _login(bloc, state, context)
                    : null,*/
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => Home()));
                    },
                  )
                : Container(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  );
          }),
    );
  }

  Widget _botonCuentaGratuita() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          disabledColor: Colors.grey,
          elevation: 0,
          color: HexColor(config.principal),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 15),
            child: const Text(
              'Cuenta gratuita',
              style: TextStyle(color: Colors.white),
            ),
          ),
          onPressed: () {
            //Navigator.push(context,navigateMapFadeIn(context, CuentaGratuita()));
          }),
    );
  }

  Widget _crearCorreo(LoginUserBloc bloc, LoginUserState state) {
    return StreamBuilder(
        stream: bloc.emailStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              autocorrect: false,
              cursorColor: HexColor(config.textoPrimario),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              onChanged: (value) {
                bloc.add(WirttenEmail(value));
                print('SNAPSHOT ${snapshot.hasData}');
              },
              style: TextStyle(color: HexColor(config.textoPrimario)),
              decoration: decoracionInputs(snapshot, 'Correo Electrónico',
                  'ejemplo@correo.com', Icons.email),
            ),
          );
        });
  }

  Widget _crearPassword(LoginUserBloc bloc, LoginUserState state) {
    return StreamBuilder(
        stream: bloc.passwordStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
                textInputAction: TextInputAction.done,
                cursorColor: HexColor(config.textoPrimario),
                onChanged: (value) {
                  bloc.add(WirttenPass(value));
                },
                style: TextStyle(color: HexColor(config.textoPrimario)),
                obscureText: (mostrarPassword) ? !hidePassword : hidePassword,
                decoration: decoracionInputs(
                    snapshot, 'Contraseña', '******', Icons.lock)),
          );
        });
  }

  InputDecoration decoracionInputs(AsyncSnapshot<dynamic> snapshot,
      String label, String hint, IconData icon) {
    return InputDecoration(
      suffix: (label == "Contraseña")
          ? InkWell(
              onTap: () {
                mostrarPassword = !mostrarPassword;
                setState(() {});
              },
              child: Icon(
                  (mostrarPassword) ? Icons.visibility_off : Icons.visibility,
                  color: HexColor(config.fondoSecundario)),
            )
          : null,
      labelText: label,
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.blueGrey),
      border: const OutlineInputBorder(),
      errorText: snapshot.error as String?,
      enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: HexColor(config.fondoSecundario), width: 2)),
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: HexColor(config.fondoPrimario), width: 2)),
      labelStyle: const TextStyle(color: Colors.blueGrey),
      prefixIcon: Icon(
        icon,
        color: HexColor(config.fondoSecundario),
      ),
    );
  }

  _login(LoginUserBloc bloc, LoginUserState state, BuildContext context) async {
    setState(() {
      isButtonEnabled = false;
      isSendLoginForm = true;
    });
    Map info = await userProvider.login(
        state.emailController, state.passwordController);

    if (info['error']?.isEmpty ?? true) {
      Auth _auth = Auth();
      FlutterSecureStorage storage = const FlutterSecureStorage();
      String? value = await storage.read(key: 'user');
      _auth = Auth.fromJson2(jsonDecode(value ?? ""));

      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
              pageBuilder: (_, __, ___) => CheckAuth(),
              transitionDuration: const Duration(milliseconds: 0)));
    } else {
      Toast().toastWidget(context, false, info['error']);
    }
    setState(() {
      isSendLoginForm = false;
      isButtonEnabled = true;
    });
  }

  Future getDeviceToken() async {
    FirebaseMessaging firebasemessage = FirebaseMessaging.instance;
    String? deviceToken = await firebasemessage.getToken();
    return (deviceToken == null) ? "" : deviceToken;
  }
}
