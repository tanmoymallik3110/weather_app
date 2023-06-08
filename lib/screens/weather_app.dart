import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transformer_page_view_tv/transformer_page_view.dart';
import 'package:weather_app/models/weather_locations.dart';
import 'package:weather_app/widgets/buildin_transform.dart';
import 'package:weather_app/widgets/slider_dot.dart';

import '../widgets/single_weather.dart';


class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {

  int _currentPage = 0;
  late String bgImg;

  void _onPageChanged(int? index) {
    setState(() {
      _currentPage = index!;
    });
  }


  @override
  Widget build(BuildContext context) {


    if(locationList[_currentPage].weatherType == 'Sunny') {
      bgImg = "assets/sunny.jpg";
    } else if(locationList[_currentPage].weatherType == 'Cloudy') {
      bgImg = "assets/cloudy.jpeg";
    } else if(locationList[_currentPage].weatherType == 'Night') {
      bgImg = "assets/night.jpg";
    } else if(locationList[_currentPage].weatherType == 'Rainy') {
      bgImg = "assets/rainy.jpg";
    }


    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        //First Section

        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(""),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/menu.svg",
                color: Colors.white,
                height: 30,
                width: 30,
              ),
            ),
          ),
        ],
      ),


      body: Stack(
          children: [
            Image.asset(
              bgImg,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black38,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 130, left: 20),
              child: Row(
                children: [
                  for(int i = 0; i<locationList.length; i++)
                    if(i == _currentPage)
                      const SliderDot(true, isActive: true)
                    else
                      const SliderDot(false, isActive: false),
                ],
              ),
            ),
            TransformerPageView(
              scrollDirection: Axis.horizontal,
              transformer: ScaleAndFadeTransformer(),
              viewportFraction: 0.8,
              onPageChanged: _onPageChanged,
              itemCount: locationList.length,
              itemBuilder: (context, i) => SingleWeather(index: i),
            ),
          ],
        ),
    );
  }
}
