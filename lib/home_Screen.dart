import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with SingleTickerProviderStateMixin{
  int currentTabIndex=0;

  
  @override
  Widget build(BuildContext context) {
    var CityList = [
      'Mumbai ',
      'Pune',
      'Delhi',
      'Bhiwandi',
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(
          children: [
            Text("Dog's Path"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("543056 Thane Throughwaya"),
                Container(
                  height: 30,
                  width: 80,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Open Path",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color(0xfff414141),
      ),
       
      body: CarouselSlider(
        options: CarouselOptions(
          //  enlargeCenterPage: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlay: true,
          height: 400,
        ),
        items: [
          'assets/images/photo1.png',
          'assets/images/photo2.png',
          "assets/images/photo3.png",
          'assets/images/photo4.png',
        ].map((i) {
          return Builder(builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                children: [
                  Image.asset(i),
                  SizedBox(height: 0),
                  if (i == 'assets/images/photo1.png')
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${CityList[0]}",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  if (i == 'assets/images/photo2.png')
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.grey,
                      child: Center(
                        child: Text(
                          "${CityList[1]}",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                  if (i == 'assets/images/photo3.png')
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.grey,
                      child: Center(
                        child: Text(
                          "${CityList[2]}",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                  if (i == 'assets/images/photo4.png')
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.grey,
                      child: Center(
                        child: Text("${CityList[3]}",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue)),
                      ),
                    ),
                ],
              ),
            );
          });
        }).toList(),
      ),
    );
  }
 
}
