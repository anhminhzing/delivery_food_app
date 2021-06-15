import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:delivery_food_app/UIData.dart';
import 'package:delivery_food_app/screens/categories/tabs/drink_tab.dart';
import 'package:delivery_food_app/screens/categories/tabs/fastfood_tab.dart';
import 'package:delivery_food_app/screens/categories/tabs/meal_tab.dart';
import 'package:delivery_food_app/screens/categories/tabs/promo_tab.dart';
import 'package:delivery_food_app/screens/categories/tabs/snack_tab.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with TickerProviderStateMixin {
  TabController _tabController;
  int selectedIndex;
  List<Map<String, String>> categories = [
    {
      'title': 'Promo',
      'urlImage': UIData.ic_promote,
    },
    {
      'title': 'Meal',
      'urlImage': UIData.ic_meal,
    },
    {
      'title': 'Drink',
      'urlImage': UIData.ic_drink,
    },
    {
      'title': 'FastFood',
      'urlImage': UIData.ic_fastfood,
    },
    {
      'title': 'Snack',
      'urlImage': UIData.ic_snack,
    },
  ];

  @override
  void initState() {
    selectedIndex = 0;
    _tabController = TabController(initialIndex: 1, length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: AppBar(
          title: Text('Categories'),
          centerTitle: true,
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: categories.map((element) {
              return Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: Image(
                        image: AssetImage(element['urlImage']),
                        height: 30,
                        width: 30,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      element['title'],
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              );
            }).toList(),
            indicator: ContainerTabIndicator(
              width: 50,
              height: 50,
              radius: BorderRadius.circular(5.0),
              borderWidth: 0.0,
              borderColor: Colors.black,
              color: Theme.of(context).primaryColor,
              padding: const EdgeInsets.only(bottom: 15),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          PromoTab(),
          MealTab(),
          DrinkTab(),
          FastFoodTab(),
          SnackTab(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }
}
