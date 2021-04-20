import 'package:delivery_food_app/UIData.dart';
import 'package:flutter/material.dart';

class CategoriesButton extends StatelessWidget {
  final String urlImage;
  final String title;
  final EdgeInsets margin;
  final Function callBackFunction;

  const CategoriesButton({
    Key key,
    this.urlImage,
    this.title,
    this.margin,
    this.callBackFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callBackFunction(),
      child: Container(
        margin: margin ?? const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: 56,
              height: 56,
              color: Color(0xFFF6F6F6),
              child: Image(
                height: 30,
                image: AssetImage(urlImage),
                // fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              this.title,
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}
