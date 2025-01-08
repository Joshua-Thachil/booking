import 'package:booking/Screens/BookScreen.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({super.key});

  List<Map<String, dynamic>> cardData = [
    {'icon': Icons.mic, 'title': 'Recording'},
    {'icon': Icons.camera, 'title': 'Camera'},
    {'icon': Icons.music_note, 'title': 'Music'},
    {'icon': Icons.people, 'title': 'Podcasts'}
    // ... more cards
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ListView(
            children: [
              Container(
                height: 415,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/412x467"),
                    fit: BoxFit.fill,
                  ),
                ),
              ), // Jam room image
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 10),
                      child: Text(
                        'VL Studios',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ), // "VL Studios"
                    Row(
                      children: [
                        Icon(Icons.access_time_rounded),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          child: Text(
                            'Open from 6 AM - 11 PM',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.12,
                              letterSpacing: 0.50,
                            ),
                          ),
                        ) // "Open From..."
                      ],
                    ), // Timing Frame
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Icon(Icons.location_on_outlined),
                            ),
                            Expanded(
                              child: Text(
                                '1023 2nd floor, 80 Feet Rd, 1st Block Koramangala, Bengaluru, Karnataka 560034',
                                overflow: TextOverflow
                                    .ellipsis, // Handle overflow with ellipsis
                                maxLines: 3, // Allow up to 3 lines
                                softWrap: true, // Wrap text to next line
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.50,
                                ),
                              ),
                            ), // "Location Text"
                          ],
                        ),
                      ),
                    ), // Location Frame
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 10),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1.5),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: Text(
                            'show in map',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.17,
                              letterSpacing: 0.50,
                            ),
                          ),
                        ),
                      ), // Show in Map Button
                    ), // "Show in Map" Frame
                    Container(
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF848484),
                          ),
                        ),
                      ),
                    ), // Divider
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Services offered',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ), // "Services offered"
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        '(Click on service to view price chart)',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.699999988079071),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ), // "(Click on services)"
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1.2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10
                        ),
                        itemCount: cardData.length, // Use the length of your data list
                        shrinkWrap: true, // Allow the GridView to shrink to its content size
                        physics: NeverScrollableScrollPhysics(), // Prevent the GridView from scrolling independently
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {}, // Handle tap event here
                            child: Container(
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color: Colors.black.withOpacity(0.3100000023841858),
                                  ),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                color: Colors.white,
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: Icon(cardData[index]['icon']),
                                  ),
                                  Text(
                                    cardData[index]['title'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ), // Service cards
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text(
                        'Equipment Available',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ), // "Equipment Available"
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                        top: 13,
                        left: 26,
                        bottom: 20,
                      ),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Colors.black.withOpacity(0.20000000298023224),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Amps:\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 1.75,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Marshall Guitar Amp\nHartke Bass Amp\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 1.75,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Microphone:\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 1.75,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Shure SM58\nAudio Man\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 1.75,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Instruments:\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 1.75,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Tama Imperial Star Drum Kit\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 1.75,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                                TextSpan(
                                  text: '...',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 1.75,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ), // Equipment Info
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Text(
                        'About Studio',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ), // "About Studio"
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                        top: 17,
                        left: 27,
                        right: 26,
                        bottom: 16,
                      ),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Colors.black.withOpacity(0.20000000298023224),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'VL studio is a premium recording studio to meet all your Audio Needs starting Audiobook, voice-over, Dubbing, Background scoring, Mixing and Mastering & Jam Rooms etc.\n\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.75,
                                letterSpacing: 0.50,
                              ),
                            ),
                            TextSpan(
                              text: 'Policies:\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 1.75,
                                letterSpacing: 0.50,
                              ),
                            ),
                            TextSpan(
                              text: 'No food inside the studio\n...',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.75,
                                letterSpacing: 0.50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), // About Studio Card
                    SizedBox(height: 100),
                  ],
                ),
              )
            ],
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BookScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 65),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Book',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ) // Book Button
              ],
            ) // Book Button
          ]
        ),
      ),
    );
  }
}