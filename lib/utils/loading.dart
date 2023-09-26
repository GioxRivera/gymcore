import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gymcore/config/config.dart' as config;

class LoadingPage extends StatefulWidget {
  LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      color: HexColor(config.fondoPrimario),
      child: InkWell(      
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 0,
                  child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 30.0),
                          ),
                        ],
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      /// Loader Animation Widget
                      CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            HexColor(config.realce)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}