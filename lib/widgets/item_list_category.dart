import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:urban_garden/models/category.dart';

class ItemListCategory extends StatelessWidget {
  Axis orentation;
  double conainerH;
  double conainerW;

   ItemListCategory({Key? key, required this.orentation,required this.conainerH, required this.conainerW}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: conainerH,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            width: conainerW,
            height: 200,
            child: Card(
              child: Stack(children: [
                Column(
                  children: [
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor(
                                '#${getCategoryList()[index].colorCode}'),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                          ),
                        )),
                    Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(getCategoryList()[index].title),
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.end,
                          ),
                        )),
                  ],
                ),
                Expanded(
                  child: Container(
                    child: Image.asset(
                      getCategoryList()[index].imageUrl,
                      width: 100,
                    ),
                    alignment: Alignment.center,
                  ),
                )
              ]),
            ),
          );
        },
        scrollDirection: orentation,
        itemCount: getCategoryList().length,
      ),
    );
  }
}
