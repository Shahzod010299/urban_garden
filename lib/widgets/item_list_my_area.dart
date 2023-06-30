import 'package:flutter/material.dart';

class ItemListMyArea extends StatelessWidget {
  Axis orentation;
  double conainerH;
  double conainerW;

   ItemListMyArea({Key? key, required this.orentation,required this.conainerH, required this.conainerW}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: conainerH,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            width: conainerW,
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
        scrollDirection: orentation,
        itemCount: 10,
      ),
    );
  }
}
