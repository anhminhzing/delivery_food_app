import 'package:delivery_food_app/UIData.dart';
import 'package:delivery_food_app/theme/appcolor.dart';
import 'package:flutter/material.dart';

class FoodCardOrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 150,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.schedule,
                                  color: AppColor.neutral1,
                                  size: 15,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '18',
                                  style:
                                      Theme.of(context).accentTextTheme.caption,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  'min',
                                  style:
                                      Theme.of(context).accentTextTheme.caption,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.fiber_manual_record,
                                  color: AppColor.neutral2,
                                  size: 8,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '3 km',
                                  style:
                                      Theme.of(context).accentTextTheme.caption,
                                ),
                                const SizedBox(width: 5),
                              ],
                            ),
                            Text(
                              '\$ 16.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 30,
                child: OutlineButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'RATE',
                      style: Theme.of(context).accentTextTheme.caption.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 30,
                child: OutlineButton(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'RE-ORDER',
                      style:
                          Theme.of(context).primaryTextTheme.caption.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
