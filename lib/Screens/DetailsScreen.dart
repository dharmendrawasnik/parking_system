import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../Provider/DateTimeProvider.dart';

class Detailsscreen extends StatefulWidget {
  const Detailsscreen({super.key});

  @override
  State<Detailsscreen> createState() => _DetailsscreenState();
}

class _DetailsscreenState extends State<Detailsscreen> {
  bool conditioValue = false;
  bool timeValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,

        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),

          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.notifications, color: Colors.black54, size: 35),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade300),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white, // Shadow color
                            blurRadius: 10, // Blur effect
                            spreadRadius: 1, // Shadow फैलने की सीमा
                            offset: Offset(
                              1,
                              1,
                            ), // X और Y दिशा में shadow shift
                          ),
                          BoxShadow(
                            color: Colors.white, // Shadow color
                            blurRadius: 10, // Blur effect
                            spreadRadius: 1, // Shadow फैलने की सीमा
                            offset: Offset(
                              -1,
                              -1,
                            ), // X और Y दिशा में shadow shift
                          ),
                        ],
                      ),

                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              conditioValue = true;

                              context.read<DateTimeProvider>().dateFuction(
                                context,
                              );
                            },
                            icon: Icon(
                              Icons.calendar_today,
                              color: Colors.amber,
                            ),
                          ),

                          conditioValue
                              ? Text(
                                '${context.watch<DateTimeProvider>().date}',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                              : Text(
                                '${context.watch<DateTimeProvider>().date}',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade300),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white, // Shadow color
                            blurRadius: 10, // Blur effect
                            spreadRadius: 1, // Shadow फैलने की सीमा
                            offset: Offset(
                              1,
                              1,
                            ), // X और Y दिशा में shadow shift
                          ),
                          BoxShadow(
                            color: Colors.white, // Shadow color
                            blurRadius: 10, // Blur effect
                            spreadRadius: 1, // Shadow फैलने की सीमा
                            offset: Offset(
                              -1,
                              -1,
                            ), // X और Y दिशा में shadow shift
                          ),
                        ],
                      ),

                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              timeValue = true;
                              context.read<DateTimeProvider>().timeFunction(
                                context,
                              );
                            },
                            icon: Icon(Icons.timer, color: Colors.amber),
                          ),
                          timeValue
                              ? Text(
                                '${context.read<DateTimeProvider>().time}',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                              : Text(
                                'Select time',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white, // Shadow color
                              blurRadius: 10, // Blur effect
                              spreadRadius: 1, // Shadow फैलने की सीमा
                              offset: Offset(
                                1,
                                1,
                              ), // X और Y दिशा में shadow shift
                            ),
                            BoxShadow(
                              color: Colors.white, // Shadow color
                              blurRadius: 10, // Blur effect
                              spreadRadius: 1, // Shadow फैलने की सीमा
                              offset: Offset(
                                -1,
                                -1,
                              ), // X और Y दिशा में shadow shift
                            ),
                          ],
                          border: Border.all(color: Colors.black54),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'MH36A6678',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  RatingBarIndicator(
                                    itemCount: 5,
                                    rating: 5,
                                    itemSize: 20,
                                    direction: Axis.horizontal,
                                    itemBuilder:
                                        (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 15,
                                        ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Valley person:-Shrikant Ramesh Yadav',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Arrival',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                      Text(
                                        'Date&Time:-',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '3/06/2025',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                      Text(
                                        '10:30',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Departure',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                      Text(
                                        'Date&Time:-',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '3/06/2025',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                      Text(
                                        '10:30',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
