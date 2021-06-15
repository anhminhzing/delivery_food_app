import 'package:delivery_food_app/UIData.dart';
import 'package:delivery_food_app/commons/variables.dart';
import 'package:delivery_food_app/screens/profileUser/widget/textfield_profile.dart';
import 'package:delivery_food_app/theme/appcolor.dart';
import 'package:flutter/material.dart';

class ProfileUserScreen extends StatefulWidget {
  @override
  _ProfileUserScreenState createState() => _ProfileUserScreenState();
}

class _ProfileUserScreenState extends State<ProfileUserScreen> {
  @override
  Widget build(BuildContext context) {
    final double smallVerticalSpace = MediaQuery.of(context).size.height * 0.02;
    final double mediumVerticalSpace =
        MediaQuery.of(context).size.height * 0.04;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile & Address'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: mediumVerticalSpace,
                ),
                child: _buildAvatar(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: mediumVerticalSpace,
                  left: AppPadding.paddingHorizontal,
                  right: AppPadding.paddingHorizontal,
                ),
                child: _buildUserInfor(
                  smallVerticalSpace,
                  mediumVerticalSpace,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: mediumVerticalSpace,
                ),
                child: _buildAddress(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: smallVerticalSpace,
                  left: AppPadding.paddingHorizontal,
                  right: AppPadding.paddingHorizontal,
                ),
                child: RaisedButton(
                  onPressed: () {},
                  child: Center(
                    child: Text('Save'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 95,
            width: 95,
            child: CircleAvatar(
              backgroundImage: AssetImage(UIData.avatar),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 28,
              width: 28,
              child: Image(
                image: AssetImage(UIData.ic_camera),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildUserInfor(
    // BuildContext context,
    double smallSized,
    double mediumSized,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'User Information',
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(
          height: smallSized,
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: TextFieldProfile(
                label: 'First name',
                textController: TextEditingController(),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: TextFieldProfile(
                label: 'Last name',
                textController: TextEditingController(),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        TextFieldProfile(
          label: 'Email',
          textController: TextEditingController(),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: TextFieldProfile(
                label: 'Gender',
                textController: TextEditingController(),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 3,
              child: TextFieldProfile(
                label: 'Phone',
                textController: TextEditingController(),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildAddress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: AppPadding.paddingHorizontal,
            right: AppPadding.paddingHorizontal,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Address',
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                'Add more',
                style: Theme.of(context).primaryTextTheme.caption.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(),
        // ListView.builder(
        //   itemCount: 2,
        //   itemBuilder: (context, index) {
        //     return _buildCardAdress();
        //   },
        // )
        _buildCardAdress(
          '222 Cullingworth Mills Yard',
          '222 Cullingworth Mills Yard, North Bridge, Halifax',
        ),
        _buildCardAdress(
          '31 Canterbury Road',
          '31 Canterbury Road, Valley Field',
        ),
      ],
    );
  }

  Widget _buildCardAdress(String mainAdress, String subAdress) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: AppPadding.paddingHorizontal,
            right: AppPadding.paddingHorizontal,
          ),
          child: Row(
            children: [
              Container(
                height: 20,
                width: 20,
                child: Image(
                  image: AssetImage(UIData.ic_maker),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainAdress,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subAdress,
                    style: Theme.of(context).textTheme.caption.copyWith(
                          color: AppColor.neutral3,
                        ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider()
      ],
    );
  }
}
