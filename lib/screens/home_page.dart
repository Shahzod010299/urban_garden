import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:urban_garden/constants/navigation.dart';
import 'package:urban_garden/models/category.dart';
import 'package:urban_garden/widgets/item_list_category.dart';
import 'package:urban_garden/widgets/item_list_me_recommendation.dart';
import 'package:urban_garden/widgets/item_list_my_area.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shakhzod Toshboyev'),
        leading: Icon(Icons.person),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.grey.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tayyor bo’lishini kutayotgan ekinlaringiz'),
                  InkWell(
                    child: Text(
                      'Barchasi...',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, Navigation.AllMyAreaPage);
                    },
                  )
                ],
              ),
            ),
          ),
          ItemListMyArea(orentation: Axis.horizontal,conainerH: 200,conainerW: 300),
          Container(
            color: Colors.grey.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Kategorylar orqali yer tanlash'),
                  InkWell(
                    child: Text(
                      'Barchasi...',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, Navigation.CategoryPage);
                    },
                  )
                ],
              ),
            ),
          ),
          ItemListCategory(orentation: Axis.horizontal, conainerH: 150, conainerW: 200),
          Container(
            color: Colors.grey.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ekin ekishingiz uchun tavsiya etiladigan yeralar'),
                  InkWell(
                    child: Text(
                      'Barchasi...',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Navigation.MeReccomendationPage);
                    },
                  )
                ],
              ),
            ),
          ),
          ItemListMeRecommendation()
        ],
      )
    );
  }
}
