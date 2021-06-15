import 'package:delivery_food_app/UIData.dart';
import 'package:delivery_food_app/theme/appColor.dart';
import 'package:flutter/material.dart';

class FoodCardInOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 106,
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
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(UIData.imgFood2),
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
                        // 'Pizzon - Crib Ln',
                        'Pizzon - Crib Ln Pizzon',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '1 x Shrimp Pizza',
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
                            Icons.access_time,
                            size: 15,
                            color: AppColor.orange,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '14:50',
                            style: Theme.of(context).primaryTextTheme.bodyText2,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '\$',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .bodyText2
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '16',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .bodyText2
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
