import 'package:delivery_food_app/UIData.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:math';


class Slide extends StatefulWidget {
  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  List<Widget> contents;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.9);
    contents = [
      Container(
        padding: const EdgeInsets.only(right: 5),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(UIData.img_slide1),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(UIData.img_slide2),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(UIData.img_slide2),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(UIData.img_slide2),
        ),
      ),
    ];
    return Column(
      children: [
        Container(
          height: 200,
          child: PageView.builder(
              controller: controller,
              itemCount: contents.length.toInt(),
              onPageChanged: (index) {},
              itemBuilder: (context, index) {
                return contents[index];
              }),
        ),
        Container(
          child: SmoothPageIndicator(
            controller: controller,
            count: contents.length.toInt(),
            effect: ExpandingDotsEffect(
              dotWidth: 10,
              dotHeight: 10,
              expansionFactor: contents.length.toDouble(),
              activeDotColor: Theme.of(context).primaryColor,
            ),
            onDotClicked: (index) {
              controller.animateToPage(
                index,
                duration: Duration(
                  milliseconds: 300,
                ),
                curve: Curves.easeIn,
              );
            },
          ),
        ),
      ],
    );
  }
}

