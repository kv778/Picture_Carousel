import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(FirstPage());

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sliding Pics Carousel',
      home: Second(),
    );
  }
}

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  CarouselSlider carouselSlider;
  int _current=0;
  List imgList = [
    'https://wallpapercave.com/wp/wp2416129.jpg',
    'https://www.itl.cat/pics/b/33/337025_plague-doctor-wallpaper.jpg',
    'https://lh3.googleusercontent.com/proxy/Erb-Ytu2MuIB5VaoJWe4Xz5LS-5LzpmRWFSDaz-38IoHU-bVo7wquStuXhRTMFFiVVrIwvuj1O9pXJsK2qDf6g8yBgIq25bgECdTl5hlw5Qwt20Y',
    'https://i.pinimg.com/736x/ff/7f/dc/ff7fdc5ff75d65e7ac9acedcf8c8bffa--doctor-costume-black-death.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plague Doctor"),
        backgroundColor:Colors.grey, 
      ),
      body: Container(

        child: Column(children: <Widget>[
          
          carouselSlider = CarouselSlider(
                height: 350.0,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Image.network(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
        ],
        )
      ),
    backgroundColor: Colors.black
    );
  }
}