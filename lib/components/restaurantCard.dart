
import 'package:delivery_food_app/commons/variables.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatefulWidget {
  @override
  _RestaurantCardState createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  Widget get distance => SizedBox(height: 10,);
  Widget get smallDistance => SizedBox(width: 5,);
  Color  get textInfoColor => AppColor.neutral3;
  Color  get textFoodColor => AppColor.neutral3;
  double get foodFontSize  => 18;
  double get infoFontSize  => 14;

  TextStyle get infoTextStyle => TextStyle(
      color: textInfoColor,
      fontSize: infoFontSize,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 241,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.neutral1,
        ),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        children: [
          Container(
            width: 240,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                image: AssetImage('assets/foods/food2.jpeg'),
                fit: BoxFit.fill
              ),
            ),
          ),
          distance,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Creamos - Cheapel In',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: foodFontSize,
                    fontWeight: FontWeight.bold,
                    color: textFoodColor,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Chapel Ln, Harriseahead',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.neutral3,
                  ),
                ),
                distance,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.schedule,
                          color: AppColor.black,
                          size: infoFontSize,
                        ),
                        smallDistance,
                        Text('18', style: infoTextStyle,),
                        smallDistance,
                        Text('min', style: infoTextStyle,),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          color: AppColor.black,
                          size: infoFontSize,
                        ),
                        smallDistance,
                        Text('3', style: infoTextStyle,),
                        smallDistance,
                        Text('km', style: infoTextStyle,)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: infoFontSize,
                        ),
                        smallDistance,
                        Text('5.0', style: infoTextStyle,),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
