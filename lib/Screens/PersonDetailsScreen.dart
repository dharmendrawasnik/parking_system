import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Persondetailsscreen extends StatefulWidget {
  const Persondetailsscreen({super.key});

  @override
  State<Persondetailsscreen> createState() => _PersondetailsscreenState();
}

class _PersondetailsscreenState extends State<Persondetailsscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.notifications, size: 35),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 610,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black38,width: 3),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue.shade300,width: 3),
                                  borderRadius: BorderRadius.circular(250)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    radius: 56,
                                    backgroundColor: Colors.blue.shade300,
                                    child: ClipOval(child: Image.asset('assets/avatar-design.png')),
                                  ),
                                ),
                              ),
                            ),
                            Container(

                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
