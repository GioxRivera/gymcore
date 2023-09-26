import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gymcore/bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gymcore/config/config.dart' as config;
import 'package:gymcore/pages/pages.dart';


void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}


class MyApp extends StatelessWidget {
  Color _background = HexColor(config.principal);

  @override
  Widget build(BuildContext contex) {
    
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LoginUserBloc()),
      ],
      child: MaterialApp(
        title: config.title,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            //brightness: Brightness.light,
            primaryColor: _background,
            /*colorScheme: ColorScheme(
                primary: HexColor(config.fondoPrimario),
                secondary: HexColor('#FFFFFF'),
                surface: _background,
                background: _background,
                error: HexColor('#B00020'),
                onPrimary: HexColor('#000000'),
                onSecondary: HexColor('#000000'),
                onSurface: HexColor('#000000'),
                onBackground: HexColor('#000000'),
                onError: HexColor('#F4F4F4'),
                brightness: Brightness.light),*/
            fontFamily: GoogleFonts.poppins().fontFamily,
            textTheme: TextTheme(
              headline1: GoogleFonts.poppins(
                  fontSize: 72, fontWeight: FontWeight.w400),
              headline2: GoogleFonts.poppins(
                  fontSize: 32, fontWeight: FontWeight.w400),
              headline3: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: HexColor(config.textoPrimario)),
              headline4: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: HexColor(config.textoPrimario)),
              headline5: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: HexColor(config.textoPrimario)),
              bodyText1: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: HexColor(config.textoPrimario)),
              bodyText2: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: HexColor(config.textoPrimario)),
            )),
        home: Splash(),
        initialRoute: Splash.routeName,
        routes: <String, WidgetBuilder>{
          Login.routeName: (BuildContext contex) => Login(),
          Splash.routeName: (BuildContext contex) => Splash(),
          CheckAuth.routeName: (BuildContext contex) => CheckAuth(),
          Menu.routeName: (BuildContext contex) => const Menu(initialIndex: 0),
        },
      ),
    );
  }
}