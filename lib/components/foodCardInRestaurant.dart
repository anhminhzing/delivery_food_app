import 'package:delivery_food_app/UIData.dart';
import 'package:delivery_food_app/theme/appcolor.dart';
import 'package:flutter/material.dart';

class FoodCardInRestaurant extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 106,
      decoration: BoxDecoration(color: AppColor.white, boxShadow: [
        BoxShadow(
          color: AppColor.black.withOpacity(0.1),
          spreadRadius: 5,
          blurRadius: 29,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ]),
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 10,
        right: 15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(UIData.imgFood3),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Shrimp pizza',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Kcal: 475',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).accentTextTheme.caption,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      'Shrimp, mushroom, cheese, tomato',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).accentTextTheme.caption,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\$ 99.00',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyText1
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '\$ 20.00',
                          style: Theme.of(context)
                              .accentTextTheme
                              .caption
                              .copyWith(
                                decoration: TextDecoration.lineThrough,
                              ),
                        )
                      ],
                    ),
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
