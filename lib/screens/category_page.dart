import 'package:flutter/material.dart';
import 'package:urban_garden/widgets/item_list_category.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Category'),),
      body: ItemListCategory(orentation: Axis.vertical, conainerH: double.infinity, conainerW: 200)
    );

  }
}
