// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:sneakers_app/theme/custom_app_theme.dart';

import '../../../../animation/fadeanimation.dart';
import '../../../../models/models.dart';
import '../../../../utils/constants.dart';
import '../../../../view/profile/widget/repeated_list.dart';
import '../../../data/dummy_data.dart';

class BodyProfile extends StatefulWidget {
  const BodyProfile({Key? key}) : super(key: key);

  @override
  _BodyProfileState createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile> {
  int statusCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
        width: width,
        child: Column(
          children: [
            topProfilePicAndName(width, height),
            SizedBox(
              height: 40,
            ),
            middleStatusListView(width, height),
            SizedBox(
              height: 30,
            ),
            middleDashboard(width, height),
            bottomSection(width, height),
          ],
        ),
      ),
    );
  }

  // Top Profile Photo And Name Components
  topProfilePicAndName(width, height) {
    return FadeAnimation(
      delay: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/91388754?v=4"),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "用户昵称",
                style: AppThemes.profileDevName
              ),
              Text(
                "球鞋爱好者",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit_outlined,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }

  // Middle Status List View Components
  middleStatusListView(width, height) {
    return FadeAnimation(
      delay: 1.5,
      child: Container(
        width: width,
        height: height / 9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "我的状态",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: width / 1.12,
                height: height / 13,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: userStatus.length,
                    itemBuilder: (ctx, index) {
                      UserStatus status = userStatus[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            statusCurrentIndex = index;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            margin: EdgeInsets.all(5),
                            width: 120,
                            decoration: BoxDecoration(
                              color: statusCurrentIndex == index
                                  ? status.selectColor
                                  : status.unSelectColor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  status.emoji,
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  status.txt,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppConstantsColor.lightTextColor,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Middle Dashboard ListTile Components
  middleDashboard(width, height) {
    return FadeAnimation(
      delay: 2,
      child: Container(
        width: width,
        height: height / 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "    控制面板",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            RoundedLisTile(
              width: width,
              height: height,
              leadingBackColor: Colors.green[600],
              icon: Icons.wallet_travel_outlined,
              title: "支付管理",
              trailing: Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[700],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "2 条新",
                      style: TextStyle(
                          color: AppConstantsColor.lightTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppConstantsColor.lightTextColor,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            RoundedLisTile(
              width: width,
              height: height,
              leadingBackColor: Colors.yellow[600],
              icon: Icons.archive,
              title: "我的成就",
              trailing: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppConstantsColor.darkTextColor,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            RoundedLisTile(
              width: width,
              height: height,
              leadingBackColor: Colors.grey[400],
              icon: Icons.shield,
              title: "隐私设置",
              trailing: Container(
                width: 140,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red[500],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "需要处理  ",
                      style: TextStyle(
                          color: AppConstantsColor.lightTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppConstantsColor.lightTextColor,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // My Account Section Components
  bottomSection(width, height) {
    return FadeAnimation(
      delay: 2.5,
      child: Container(
        width: width,
        height: height / 6.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "    我的账户",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 15),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "    切换账户",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[600],
                  fontSize: 17),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "    退出登录",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red[500],
                  fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
