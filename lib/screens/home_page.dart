import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:urban_garden/models/category.dart';

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
                  Text(
                    'Barchasi...',
                    style: TextStyle(color: Colors.blueAccent),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                  width: 320,
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
                        Text('Qishloqda joylashgan ...'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/img_category_7.png',
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                                child: Text(
                                  'Oshqovoq ekish uchun ajoyib joy ....',
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.timelapse,
                                  color: Colors.green,
                                ),
                                Text(
                                  '01.02.2023',
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.timelapse,
                                  color: Colors.red,
                                ),
                                Text(
                                  '01.02.2023',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text('Toshkent, Qibray,Qaxramonlar MFY'),
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
              scrollDirection: Axis.horizontal,
              itemCount: 10,
            ),
          ),
          Container(
            color: Colors.grey.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Kategorylar orqali yer tanlash'),
                  Text(
                    'Barchasi...',
                    style: TextStyle(color: Colors.blueAccent),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
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
              scrollDirection: Axis.horizontal,
              itemCount: getCategoryList().length,
            ),
          ),
          Container(
            color: Colors.grey.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ekin ekishingiz uchun tavsiya etiladigan yeralar'),
                  Text(
                    'Barchasi...',
                    style: TextStyle(color: Colors.blueAccent),
                  )
                ],
              ),
            ),
          ),
          Container(
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
          )
        ],
      )
    );
  }
}
