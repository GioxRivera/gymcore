import 'package:flutter/material.dart';
import 'package:gymcore/model/general.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gymcore/config/config.dart' as config;

class ElementoTile extends StatelessWidget {
  final Ejercicio data;
  ElementoTile({required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => EjercicioDetailPage(data: data)));
      },
      child: Container(
        height: 90,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: HexColor(config.fondoPrimario),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            // Ejercicio Photo
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blueGrey,
                image: DecorationImage(image: AssetImage(data.photo), fit: BoxFit.cover),
              ),
            ),
            // Ejercicio Info
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Ejercicio title
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Text(
                        data.title,
                        style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'inter'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
