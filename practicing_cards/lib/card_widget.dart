import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventCardWidget extends StatelessWidget {
  const EventCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 245,
        height: 325,
        margin: EdgeInsets.only(left: 10, bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        alignment: FractionalOffset.topCenter,
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(18.0),
                        child: Image.network(
                            'https://picsum.photos/250?image=9',
                            width: 220,
                            height: 170,
                            fit: BoxFit.cover)),
                    Positioned(
                        top: 8,
                        right: 8,
                        child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: const Center(
                                child: Icon(
                              Icons.favorite,
                              size: 18,
                            ))))
                  ]),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Heavent Expo 22',
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text('Heavent Paris',
                                    style: GoogleFonts.poppins(
                                      color: Colors.black.withOpacity(0.8),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text('Happening now',
                                    style: GoogleFonts.poppins(
                                      color: const Color.fromARGB(
                                          255, 255, 72, 66),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                            Container(
                              // width: 55,
                              // height: 55,
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 5),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '22',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 26,
                                      ),
                                    ),
                                    Text(
                                      'Oct',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 8,
                                      ),
                                    ),
                                  ]),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Stade de France, France',
                                    style: GoogleFonts.poppins(
                                      color: Colors.black.withOpacity(0.5),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                    )),
                                Text('1800 EUR',
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                    ))
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}