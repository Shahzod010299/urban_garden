import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:urban_garden/models/category.dart';

class ItemListMeRecommendation extends StatelessWidget {
  const ItemListMeRecommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: MasonryGridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 2,
          shrinkWrap: true,
          crossAxisSpacing: 10,
          mainAxisSpacing: 12,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    Colors.green.shade200,
                    Colors.blue.shade200,
                    Colors.blue.shade100,
                    Colors.green.shade100,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text('Tarvuz ekish uchun ajoyib joy ....')),
                        Icon(Icons.favorite_border,color: Colors.white,)
                      ],
                    ),
                    Image.asset(
                      'assets/images/img_dala.png',
                      width: double.infinity,
                      height: 120,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Icon(
                          Icons.crop_landscape,
                        ),
                        Text(
                          '11 sotx',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text('Toshkent...'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.home_repair_service_outlined),
                        Text('POLIZUZ MCHJ'),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: getCategoryList().length,
        ),
      ),
    );
  }
}
