// import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("My Card"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[700],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          // Card container
          child: Container(
            margin: EdgeInsets.all(2),
            height: 250,
            // width: double.infinity,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 16,
                  spreadRadius: 8,
                  offset: Offset(10, 10),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  // Company info and QR code
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //   Company name and info
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //   Company name
                          Row(
                            children: [
                              Text(
                                "Tryca Products",
                                style: TextStyle(
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          //   Company info
                          Row(
                            children: [
                              Text(
                                "Supplier of Textile Fabrics\nCotton Canvas, Dori, Niwar, Tape,\nCoated Textile Fabrics, Etc.",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //   QR Code
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(
                              height: 80,
                              width: 80,
                              image: AssetImage("images/qr.png"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Address
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                          "1833, Mezzanine Floor Bara Hindurao\nnear Azad Market Gurudwara\nDelhi - 110006",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  //   Line break
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: 4, width: 300, color: Colors.blue[800]),
                    ],
                  ),
                  //   Name and designation ; Phone number and email id
                  Row(
                    children: [
                      // Circular Avatar
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.pink,
                            ),
                            child: CircleAvatar(
                              // radius: 20,
                              backgroundImage: AssetImage("images/avatar.png"),
                            ),
                          ),
                        ],
                      ),
                      // Name, Designation and contact details
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Name
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Tushar Aggarwal",
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            // Designation
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Proprietor",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            // Email Address
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "tushar******@gmail.com",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            // Phone Number
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "+91 9560******",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
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
            ),
          ),
        ),
      ),
    );
  }
}
