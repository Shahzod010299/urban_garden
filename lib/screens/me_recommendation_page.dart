import 'package:flutter/material.dart';
import 'package:urban_garden/widgets/item_list_me_recommendation.dart';

class MeReccomendationPage extends StatelessWidget {
  const MeReccomendationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Me Recommendation'),),
      body: Container(child: ItemListMeRecommendation())
    );
  }
}
