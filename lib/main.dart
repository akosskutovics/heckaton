//import 'package:competition/profile.dart';
import 'package:competition/home.dart';
import 'package:competition/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(fontFamily: 'OpenSans'),
        home: MyApp(),
        //home: Profile(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Another extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnotherState();
  }
}

class _AnotherState extends State<Another> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("data"),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _userNameController.text = "test@gmail.com";
    _passwordController.text = "qwerty";
  }

  Future _navigateToSubPage(context) async {
    print(12321312);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Another()));
  }

  Future<void> singIn(BuildContext _context) async {
    final _formState = _formKey.currentState;
    print(_email);
    print(_password);
    if (_formState.validate()) {
      try {
        _formState.save();
        AuthResult user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        print(user.user.uid);
        await _navigateToSubPage(_context);
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Form(
        key: _formKey,
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
                        Image(
                          image: AssetImage('assets/images/logo.png'),
                          height: ScreenUtil().setHeight(100),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Text(
                      "Unimeet",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(50),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(100),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: ScreenUtil().setHeight(30),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(25),
                          ),
                          child: Text(
                            "E-mail",
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(25),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(15),
                        ),
                        Container(
                          width: double.infinity,
                          height: ScreenUtil().setHeight(100),
                          child: TextFormField(
                            controller: _userNameController,
                            validator: (input) {
                              return input.isEmpty
                                  ? "please type an email"
                                  : null;
                            },
                            onChanged: (input) => _email = input,
                            decoration: InputDecoration(
                              hintText: "e-mail",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil().setSp(25),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(60),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(25),
                          ),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(25),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(15),
                        ),
                        Container(
                          width: double.infinity,
                          height: ScreenUtil().setHeight(100),
                          child: TextFormField(
                            controller: _passwordController,
                            validator: (input) {
                              return input.isEmpty
                                  ? "please type a password"
                                  : null;
                            },
                            onChanged: (input) => _password = input,
                            decoration: InputDecoration(
                              hintText: "password",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil().setSp(25),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            obscureText: true,
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(100),
                        ),
                        Container(
                          width: double.infinity,
                          height: ScreenUtil().setHeight(100),
                          child: RaisedButton(
                            color: Color(0xff0057FF),
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(28),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              //singIn(context);
                              _navigateToSubPage(context);
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
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
