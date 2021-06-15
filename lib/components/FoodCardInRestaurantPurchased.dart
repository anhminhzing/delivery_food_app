import 'package:delivery_food_app/UIData.dart';
import 'package:delivery_food_app/theme/appcolor.dart';
import 'package:flutter/material.dart';

class FoodCardInRestaurantPurchased extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 130,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 29,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
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
                  child: Container(
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Kcal: 475',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                    Theme.of(context).accentTextTheme.caption,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Shrimp, mushroom, cheese, tomato',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).accentTextTheme.caption,
                            )
                          ],
                        ),
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
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2),
          Row(
            children: [
              Image(image: AssetImage(UIData.ic_check)),
              const SizedBox(width: 2,),
              Text(
                'twice by you',
                style: Theme.of(context).accentTextTheme.caption,
              ),
            ],
          )
        ],
      ),
    );
  }
}
