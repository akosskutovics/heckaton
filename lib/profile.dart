import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Form(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(80),
                    right: ScreenUtil().setWidth(80),
                    top: ScreenUtil().setHeight(50)),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: ScreenUtil().setHeight(200),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: ScreenUtil().setWidth(300),
                          height: ScreenUtil().setHeight(300),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/profilepic.jpg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(30),
                    ),
                    Text(
                      "Change picture",
                      style: TextStyle(
                        color: Color(0xff0057FF),
                        fontSize: ScreenUtil().setSp(28),
                        fontFamily: "OpenSans",
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(80),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "About",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(30),
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Edit",
                              style: TextStyle(
                                color: Color(0xff0057FF),
                                fontSize: ScreenUtil().setSp(28),
                                fontFamily: "OpenSans",
                              ),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(5),
                            ),
                            Image(
                              image: AssetImage('assets/images/edit.png'),
                              height: ScreenUtil().setHeight(30),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Name",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(28),
                            fontFamily: "OpenSans",
                          ),
                        ),
                        Text(
                          "name",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(28),
                            fontFamily: "OpenSans",
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(150),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Education",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(30),
                            fontFamily: "OpenSans",
                          ),
                        ),
                        Text(
                          "education",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(30),
                            fontFamily: "OpenSans",
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(150),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "About",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(30),
                            fontFamily: "OpenSans",
                          ),
                        ),
                        Text(
                          "about",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(30),
                            fontFamily: "OpenSans",
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(150),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: ScreenUtil().setHeight(120),
                        ),
                        Text(
                          "Groups",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(30),
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
