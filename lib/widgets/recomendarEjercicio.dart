import 'package:flutter/material.dart';

import '../model/general.dart';

class RecomendarEjercicioCard extends StatelessWidget {
  final Ejercicio data;
  RecomendarEjercicioCard({required this.data});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => EjercicioDetailPage(data: data)));
      },
      child: Container(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ejercicio Photo
            Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey,
                image: DecorationImage(
                  image: AssetImage(data.photo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Ejercicio title
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 8),
              padding: EdgeInsets.only(left: 4),
              child: Text(
                data.title,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'inter'),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
