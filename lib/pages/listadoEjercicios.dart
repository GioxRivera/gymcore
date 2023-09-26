import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymcore/model/general.dart';
import 'package:gymcore/pages/login.dart';
import 'package:gymcore/widgets/elementoTile.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gymcore/config/config.dart' as config;

import '../borrar/EjercicioHelper.dart';

class ListadoEjercicios extends StatefulWidget {
  @override
  _ListadoEjerciciosState createState() => _ListadoEjerciciosState();
}

class _ListadoEjerciciosState extends State<ListadoEjercicios> {
  TextEditingController searchInputController = TextEditingController();
  List<Ejercicio> bookmarkedEjercicio = EjercicioHelper.bookmarkedEjercicio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //brightness: Brightness.dark,
        backgroundColor: HexColor(config.fondoPrimario),
        centerTitle: false,
        elevation: 0,
        title: Text('Ejercicios', style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400, fontSize: 16)),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Search Bar
          Container(
            width: MediaQuery.of(context).size.width,
            height: 95,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            color: HexColor(config.fondoPrimario),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Search TextField
                    Expanded(
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: HexColor(config.fondoPrimario),),
                        child: TextField(
                          controller: searchInputController,
                          onChanged: (value) {
                            print(searchInputController.text);
                            setState(() {});
                          },
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
                          maxLines: 1,
                          textInputAction: TextInputAction.search,
                          decoration: InputDecoration(
                            hintText: '¿Qué ejercicio buscas?',
                            hintStyle: TextStyle(color: Colors.white.withOpacity(0.2)),
                            prefixIconConstraints: BoxConstraints(maxHeight: 20),
                            contentPadding: EdgeInsets.symmetric(horizontal: 17),
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            prefixIcon: Visibility(
                              visible: (searchInputController.text.isEmpty) ? true : false,
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 12),
                                child: SvgPicture.asset(
                                  'assets/icons/search.svg',
                                  width: 20,
                                  height: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Filter Button
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                            builder: (context) {
                              return Login();
                            });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor(config.fondoSecundario),
                        ),
                        child: SvgPicture.asset('assets/icons/filter.svg'),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: bookmarkedEjercicio.length,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return SizedBox(height: 16);
              },
              itemBuilder: (context, index) {
                return ElementoTile(
                  data: bookmarkedEjercicio[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
