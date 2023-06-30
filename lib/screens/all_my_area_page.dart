import 'package:flutter/material.dart';
import 'package:urban_garden/widgets/item_list_my_area.dart';

class AllMyAreaPage extends StatelessWidget {
  const AllMyAreaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My all area'),),
      body: ItemListMyArea(orentation: Axis.vertical,conainerH: double.infinity,conainerW: 200),
    );
  }
}
