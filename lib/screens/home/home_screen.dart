import 'package:delivery_food_app/UIData.dart';
import 'package:delivery_food_app/components/restaurantCard.dart';
import 'package:delivery_food_app/screens/home/component/category_button.dart';
import 'package:delivery_food_app/screens/home/component/slide.dart';
import 'package:delivery_food_app/theme/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double paddingHorizontal = 16;
  final ScrollController popularEatriesController = ScrollController();
  final ScrollController nearByController = ScrollController();
  List<Map<String, String>> categories = [
    {
      'title': 'Promos',
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

  List<Map<String, String>> listCuisines = [
    {
      'title': 'New Zealander',
      'urlImage': UIData.newzealander,
    },
    {
      'title': 'Greece',
      'urlImage': UIData.greece,
    },
    {
      'title': 'Italian',
      'urlImage': UIData.italian,
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: paddingHorizontal,
                right: paddingHorizontal,
                top: 70,
              ),
              child: _buildHeader(),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
              ),
              child: _buildSearchTextField(),
            ),
            Slide(),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
              ),
              child: _buildPopularEatries(context),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
              ),
              child: _buildCategories(context),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
              ),
              child: _buildNearBy(context),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
              ),
              child: _buildCuisines(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hello, ',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    TextSpan(
                      text: 'Ocoho',
                      style: Theme.of(context).primaryTextTheme.headline2,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'North Bridge, Halifax',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: AppColor.neutral3,
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FaIcon(
                    FontAwesomeIcons.angleDown,
                    size: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(UIData.avatar),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSearchTextField() {
    return TextField(
      style: Theme.of(context).textTheme.bodyText1,
      controller: TextEditingController(),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0),
        fillColor: AppColor.neutral5,
        hintText: "Search for restaurants, dishes,...",
        hintStyle: Theme.of(context).textTheme.bodyText1.copyWith(
              color: AppColor.neutral3,
            ),
        filled: true,
        prefixIcon: Container(
          child: Container(
            width: 10,
            child: Center(
              child: FaIcon(
                FontAwesomeIcons.search,
                size: 20,
                color: AppColor.neutral2,
              ),
            ),
          ),
        ),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColor.borderInput,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 20,
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColor.borderInput,
            width: 1,
          ),
        ),
      ),
    );
  }

  Widget _buildPopularEatries(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Eatries',
              style: Theme.of(context).textTheme.headline4.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              'View all',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
          ],
        ),
        const SizedBox(height: 30),
        Container(
          height: 188,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: popularEatriesController,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: index == 0
                    ? const EdgeInsets.only(right: 5)
                    : const EdgeInsets.symmetric(horizontal: 10),
                child: RestaurantCard(),
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildCategories(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: Theme.of(context).textTheme.headline4.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 30),
        Container(
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: popularEatriesController,
            itemCount: categories.length.toInt(),
            itemBuilder: (context, index) {
              return CategoriesButton(
                title: categories[index]['title'],
                urlImage: categories[index]['urlImage'],
                margin: index == 0 ? const EdgeInsets.only(right: 15) : null,
                callBackFunction: () {
                  print('callback $index');
                },
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildNearBy(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Near by',
              style: Theme.of(context).textTheme.headline4.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              'View all',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
          ],
        ),
        const SizedBox(height: 30),
        Container(
          height: 188,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: nearByController,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: index == 0
                    ? const EdgeInsets.only(right: 5)
                    : const EdgeInsets.symmetric(horizontal: 10),
                child: RestaurantCard(),
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildCuisines(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Cuisines',
              style: Theme.of(context).textTheme.headline4.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              'View all',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
          ],
        ),
        const SizedBox(height: 30),
        Container(
          height: 188,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: nearByController,
            itemCount: listCuisines.length,
            itemBuilder: (context, index) {
              print(listCuisines[index]['urlImg']);
              return _buildCuisineCard(
                title: listCuisines[index]['title'],
                urlImage: listCuisines[index]['urlImage'],
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildCuisineCard({String title, String urlImage}) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 70,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),

          child: Image(
            image: AssetImage(urlImage),
            fit: BoxFit.contain,
          ),

        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }

  @override
  void dispose() {
    nearByController?.dispose();
    popularEatriesController?.dispose();
    super.dispose();
  }
}
