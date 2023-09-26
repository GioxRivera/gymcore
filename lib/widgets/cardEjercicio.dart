import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymcore/model/general.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gymcore/config/config.dart' as config;

class CardEjercicio extends StatelessWidget {
  final Ejercicio data;

  CardEjercicio({required this.data});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => EjercicioDetailPage(data: data)));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 160,
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.all(15),
        // Image
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: DecorationImage(image: AssetImage(data.photo), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8),
              width: 95,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: HexColor(config.fondoPrimario)),
              child: Text(
                'Haz tus rutinas',
                style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
              ),
            ),
            // Ejercicio Info Wrapper
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: Container(
                  height: 80,
                  width: 165,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black.withOpacity(0.26),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Ejercicio Title
                      Text(
                        data.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white, fontSize: 14, height: 150 / 100, fontWeight: FontWeight.w600, fontFamily: 'inter'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
