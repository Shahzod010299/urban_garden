import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:urban_garden/constants/navigation.dart';
import 'package:urban_garden/utils/size.dart';

class SwipePage extends StatefulWidget {
  const SwipePage({Key? key}) : super(key: key);

  @override
  State<SwipePage> createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  late int selectedPage;
  late final PageController _pageController;

  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> listInfo = [];
    listInfo.add("Your land will not be empty with us.");
    listInfo.add("We give you land for you to use.");
    listInfo.add("Create your own garden on your phone.");

    final pageCount = listInfo.length;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Colors.green.shade600,
              Colors.blue.shade400,
              Colors.blue.shade200,
              Colors.green.shade200,
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    selectedPage = page;
                  });
                },
                children: List.generate(pageCount, (index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            listInfo[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 34
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/urban.png',
                          width: getW(context) * 0.6,
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    child: PageViewDotIndicator(
                      currentItem: selectedPage,
                      count: pageCount,
                      unselectedColor: Colors.white,
                      selectedColor: Colors.green,
                      duration: Duration(milliseconds: 200),
                      boxShape: BoxShape.circle,
                    ),
                  ),
                  Row(
                    children: [
                      OutlinedButton(onPressed: (){
                          Navigator.pushNamed(context, Navigation.HomePage);
                      }, child: Text('Finish') ),
                    ],
                  )
                ],
              ),

            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
