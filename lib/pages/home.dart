import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymcore/borrar/EjercicioHelper.dart';
import 'package:gymcore/model/general.dart';
import 'package:gymcore/pages/escaner.dart';
import 'package:gymcore/pages/listadoEjercicios.dart';
import 'package:gymcore/pages/login.dart';
import 'package:gymcore/config/config.dart' as config;
import 'package:gymcore/widgets/recomendarEjercicio.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widgets/cardEjercicio.dart';
import '../widgets/categoryCard.dart';

class Home extends StatelessWidget {
  final Ejercicio popularEjercicio = EjercicioHelper.popularEjercicio;
  final List<Ejercicio> sweetFoodRecommendationEjercicio = EjercicioHelper.sweetFoodRecommendationEjercicio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor(config.fondoPrimario),
        //brightness: Brightness.dark,
        elevation: 0,
        centerTitle: false,
        title: Text('Gym Core', style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400, fontSize: 16)),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
            },
            icon: SvgPicture.asset('assets/icons/search.svg', color: Colors.white),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Category
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: MediaQuery.of(context).size.width,
            height: 245,
            color: HexColor(config.fondoPrimario),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListadoEjercicios()));
                  },
                  child: CategoryCard(title: 'Ejercicios', image: AssetImage('assets/images/ejercicios.png'))
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Escaner()));
                  },
                  child: CategoryCard(title: 'Escaner', image: AssetImage('assets/images/escaner.png'))
                ),
                CategoryCard(title: '....', image: AssetImage('assets/images/ejercicios.png')),
                CategoryCard(title: '....', image: AssetImage('assets/images/ejercicios.png')),
                CategoryCard(title: '....', image: AssetImage('assets/images/ejercicios.png')),
                CategoryCard(title: '....', image: AssetImage('assets/images/ejercicios.png')),
              ],
            ),
          ),
          // Section 2 - Popular Card
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: CardEjercicio(
              data: popularEjercicio,
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Estos son algunos servicios sugeridos:',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                // Content
                Container(
                  height: 174,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: sweetFoodRecommendationEjercicio.length,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16);
                    },
                    itemBuilder: (context, index) {
                      return RecomendarEjercicioCard(data: sweetFoodRecommendationEjercicio[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
