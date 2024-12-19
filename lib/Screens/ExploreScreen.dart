import 'package:booking/Screens/AboutScreen.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 40, left: 30, right: 30),
          child: ListView(
            children: [
              Text(
                'Logo / Product Name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 35),

              Container(
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0xFFEFEFEF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Find Jam Rooms',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 27),
                        ),
                        style: TextStyle(
                          color: Color(0xFF919191),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(Icons.search),
                    )
                  ],
                ),
              ), // Search Bar

              SizedBox(height: 25),

              Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 22),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFC7C7C7)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Recording',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 22),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFC7C7C7)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Jam Session',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ), // Category Row 1

              SizedBox(height: 10),

              Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 22),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFC7C7C7)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Video recording',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 22),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFC7C7C7)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Podcast',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ), // Category Row 2

              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Explore',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ), // "Explore"

              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutScreen()));
                },
                child: Container(
                  width: double.infinity, // Fills available horizontal space
                  height: 270, // Adjust as needed for aspect ratio
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 3,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: double.infinity, // Fills container width
                          height: 190, // Adjust as needed for aspect ratio
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/372x174"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'VL Studios',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'INR 450 onwards',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Koramangala',
                              style: TextStyle(
                                color: Color(0xFF676767),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ), // VL Studio Card
            ],
          ),
        ),
      ),
    );
  }
}
