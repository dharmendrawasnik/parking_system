import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String data = '''Name':'Dharmendra Wasnik',
    'Position':'Developer',
    'Position':'Developer',
    'Employee':'6546454646',
    'Company':'HB Gadget & solution Nagpue''';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.black.withOpacity(0.8),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
          ),
          backgroundColor: Colors.blue.shade300,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.notifications, size: 35, color: Colors.white),
            ),
          ],
        ),
        drawer: Drawer(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      height: 350,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300, // Shadow color
                            blurRadius: 10, // Blur effect
                            spreadRadius: 1, // Shadow फैलने की सीमा
                            offset: Offset(
                              1,
                              1,
                            ), // X और Y दिशा में shadow shift
                          ),
                          BoxShadow(
                            color: Colors.grey.shade300, // Shadow color
                            blurRadius: 10, // Blur effect
                            spreadRadius: 1, // Shadow फैलने की सीमा
                            offset: Offset(
                              -1,
                              -1,
                            ), // X और Y दिशा में shadow shift
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 250,
                            height: 250,
                            child: Center(
                              child: QrImageView(

                                data: data,
                                version: QrVersions.auto,
                                size: 250,
                              ),
                            ),
                          ),
                          Text(
                            'Scan QR',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 65,
                      width: 310,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300, // Shadow color
                            blurRadius: 10, // Blur effect
                            spreadRadius: 1, // Shadow फैलने की सीमा
                            offset: Offset(
                              1,
                              1,
                            ), // X और Y दिशा में shadow shift
                          ),
                          BoxShadow(
                            color: Colors.grey.shade300, // Shadow color
                            blurRadius: 10, // Blur effect
                            spreadRadius: 1, // Shadow फैलने की सीमा
                            offset: Offset(
                              -1,
                              -1,
                            ), // X और Y दिशा में shadow shift
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'MH36A6678',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'I Need my car in 30 min... ',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 5),
                                Container(
                                  width: 10,
                                  height: 10,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                    'assets/whatsapps_icon-removebg-preview.png',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 65,
                      width: 310,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300, // Shadow color
                            blurRadius: 10, // Blur effect
                            spreadRadius: 1, // Shadow फैलने की सीमा
                            offset: Offset(
                              1,
                              1,
                            ), // X और Y दिशा में shadow shift
                          ),
                          BoxShadow(
                            color: Colors.grey.shade300, // Shadow color
                            blurRadius: 10, // Blur effect
                            spreadRadius: 1, // Shadow फैलने की सीमा
                            offset: Offset(
                              -1,
                              -1,
                            ), // X और Y दिशा में shadow shift
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'MH36A6678',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Get my car in 15 min on main gate...',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.black54,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 5),
                                Container(
                                  width: 10,
                                  height: 10,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                    'assets/whatsapps_icon-removebg-preview.png',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 65,
                      width: 310,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300, // Shadow color
                            blurRadius: 10, // Blur effect
                            spreadRadius: 1, // Shadow फैलने की सीमा
                            offset: Offset(
                              1,
                              1,
                            ), // X और Y दिशा में shadow shift
                          ),
                          BoxShadow(
                            color: Colors.grey.shade300, // Shadow color
                            blurRadius: 10, // Blur effect
                            spreadRadius: 1, // Shadow फैलने की सीमा
                            offset: Offset(
                              -1,
                              -1,
                            ), // X और Y दिशा में shadow shift
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'MH36A6678',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'I Need my car in 1 hrs...',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 5),
                                Container(
                                  width: 10,
                                  height: 10,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                    'assets/whatsapps_icon-removebg-preview.png',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
