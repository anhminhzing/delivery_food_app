import 'package:delivery_food_app/UIData.dart';
import 'package:delivery_food_app/theme/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BackgroundContainer extends StatefulWidget {
  final Widget avatar;

  const BackgroundContainer({Key key, this.avatar}) : super(key: key);
  @override
  _BackgroundContainerState createState() => _BackgroundContainerState();
}

class _BackgroundContainerState extends State<BackgroundContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      color: AppColor.white,
      child: Stack(
        children: [
          Positioned(
            top: -MediaQuery.of(context).size.height * 0.05,
            left: -MediaQuery.of(context).size.width * 0.1,
            child: Image(
              image: AssetImage(UIData.oval1),
            ),
          ),
          Positioned(
            top: -MediaQuery.of(context).size.height * 0.09,
            left: MediaQuery.of(context).size.width * 0.1,
            child: Image(
              image: AssetImage(UIData.oval1),
            ),
          ),
          Positioned(
            bottom: -MediaQuery.of(context).size.height * 0.01,
            right: -MediaQuery.of(context).size.width * 0.15,
            child: Image(
              image: AssetImage(UIData.path),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            right: MediaQuery.of(context).size.width * 0.1,
            child: _buildNotification(context),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 7,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                  child: Text('sdadas'),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }

  Widget _buildNotification(context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        FaIcon(
          FontAwesomeIcons.bell,
          size: 33,
          color: Theme.of(context).primaryColor,
        ),
        Positioned(
          top: -5,
          right: -5,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.caption.copyWith(
                      color: AppColor.white,
                      fontWeight: FontWeight.w700
                    ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
