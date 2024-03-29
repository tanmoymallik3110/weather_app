import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/weather_locations.dart';


class SingleWeather extends StatelessWidget {
  const SingleWeather({super.key, required this.index});


  final int index;
  


  @override
  Widget build(BuildContext context) {
  return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [        
                    const SizedBox(height: 150),        
                    Text(
                      locationList[index].city,
                      style: GoogleFonts.lato(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      locationList[index].dateTime,
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ]
                ),

                //Third Section

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locationList[index].temparature,
                      style: GoogleFonts.lato(
                        fontSize: 85,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          locationList[index].iconUrl,
                          width: 34,
                          height: 34,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          locationList[index].weatherType,
                          style: GoogleFonts.lato(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),


          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 40),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white30,
                  ),
                ),
              ),

              //Bottom Section


              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Wind",
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          locationList[index].wind.toString(),
                          style: GoogleFonts.lato(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "kmH",
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Stack(
                          children: [
                            Container(
                              height: 5, 
                              width: 50,
                              color: Colors.white38,
                            ),
                            Container(
                              height: 5, 
                              width: 17,
                              color: Colors.greenAccent,
                            ),
                          ],
                        ),
                      ],
                    ),



                      Column(
                      children: [
                        Text(
                          "Rainfall",
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          locationList[index].rain.toString(),
                          style: GoogleFonts.lato(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "in last 24h",
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Stack(
                          children: [
                            Container(
                              height: 5, 
                              width: 50,
                              color: Colors.white38,
                            ),
                            Container(
                              height: 5, 
                              width: 9,
                              color: Colors.redAccent,
                            ),
                          ],
                        ),
                      ],
                    ),



                      Column(
                      children: [
                        Text(
                          "Humidity",
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          locationList[index].humidity.toString(),
                          style: GoogleFonts.lato(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "%",
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Stack(
                          children: [
                            Container(
                              height: 5, 
                              width: 50,
                              color: Colors.white38,
                            ),
                            Container(
                              height: 5, 
                              width: 38,
                              color: const Color.fromARGB(255, 247, 162, 3),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

