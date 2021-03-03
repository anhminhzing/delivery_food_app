import 'package:delivery_food_app/UIData.dart';
import 'package:delivery_food_app/theme/appColor.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  Widget get distance => SizedBox(
        height: 10,
      );

  Widget get smallDistance => SizedBox(
        width: 5,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 241,
      height: 188,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 18,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
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
                  image: AssetImage(UIData.imgFood2), fit: BoxFit.fill),
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
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Chapel Ln, Harriseahead',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.caption.copyWith(
                        fontWeight: FontWeight.w600,
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
                          size: 16,
                        ),
                        smallDistance,
                        Text(
                          '18',
                          style: Theme.of(context)
                              .accentTextTheme
                              .caption
                              .copyWith(color: AppColor.black),
                        ),
                        smallDistance,
                        Text(
                          'min',
                          style: Theme.of(context)
                              .accentTextTheme
                              .caption
                              .copyWith(color: AppColor.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          color: AppColor.black,
                          size: 16,
                        ),
                        smallDistance,
                        Text(
                          '3 km',
                          style: Theme.of(context)
                              .accentTextTheme
                              .caption
                              .copyWith(color: AppColor.black),
                        ),
                        smallDistance,
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        smallDistance,
                        Text(
                          '5.0',
                          style: Theme.of(context)
                              .accentTextTheme
                              .caption
                              .copyWith(color: AppColor.black),
                        ),
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
