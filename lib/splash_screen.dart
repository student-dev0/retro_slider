import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'note_pad.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Image.asset('assets/images/title.png', height: 20),
          )),
        ),
        body: Center(
            child: Column(children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.asset('assets/images/Work From Home.png'),
                      ),
                      Text('Play Anywhere',
                          style: GoogleFonts.inter(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      const SizedBox(height: 5),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 300),
                        child: const Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            'The video call feature can be accessed from anywhere in your house to help you.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ]),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.asset('assets/images/Exercise.png'),
                      ),
                      Text('Stay Healthy',
                          style: GoogleFonts.inter(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      const SizedBox(height: 5),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 300),
                        child: const Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            'Nobody likes to be alone and the built-in group video call feature helps you connect.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ]),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.asset('assets/images/Connections.png'),
                      ),
                      Text('Make Connections',
                          style: GoogleFonts.inter(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      const SizedBox(height: 5),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 300),
                        child: const Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            'While working the app reminds you to smile, laugh, walk and talk with those who matters.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(dotHeight: 6, dotWidth: 6),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4756DF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(50, 50),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotePadScreen()));
              },
              child: Text('Get Started',
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  )),
            ),
          ),
        ])));
  }
}
