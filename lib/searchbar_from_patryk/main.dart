import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new MyHomePage(
          title: 'ListView with Search',
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = List<String>();

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(
            top: ScreenUtil().setWidth(50),
            bottom: ScreenUtil().setWidth(80),
            left: ScreenUtil().setWidth(50),
            right: ScreenUtil().setWidth(50),
          ),
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(30),
              ),
              Container(
                height: 400,
                // for all elements
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      // picture + text
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              right: ScreenUtil().setWidth(40),
                            ),
                            width: ScreenUtil().setWidth(260),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  'https://previews.123rf.com/images/benzoix/benzoix1906/benzoix190600514/125413166-close-up-of-funny-handsome-young-dark-skinned-man-stylish-white-t-shirt-looking-in-camera-with-raise.jpg',
                                ),
                              ),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(ScreenUtil().setWidth(30))),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                          Text("Dupa"),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
