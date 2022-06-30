import 'package:flutter/material.dart';
import 'package:task_01algoriza/screen/splash_screen1.dart';
import 'package:task_01algoriza/screen/splash_screen2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                children:  [
                  SplashOne(),
                   SplashTwo(),
                ],
              ),
            ),
            Container(
              child:
              SmoothPageIndicator(
                controller:_controller,
                count:3,
                effect:const SlideEffect(
                  spacing : 8,
                  radius : 4,
                  dotWidth : 24,
                  dotHeight : 16,
                  activeDotColor : Colors.brown,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
