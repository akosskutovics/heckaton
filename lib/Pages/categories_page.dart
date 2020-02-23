import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:competition/Pages/group_page.dart';
import 'package:competition/backend/mocks/category_mock.dart';
import 'package:competition/backend/mocks/group_mock.dart';
import 'package:competition/backend/models.dart';

//import 'packge:'
class CategoryPage extends StatelessWidget {
  final Color color = Colors.transparent;
  CategoryPage();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          for (final cat in mockCategories)
            Center(
              child: MyButton(name: cat.name, id: cat.id),
            )
        ],
      ),
    );
  }
}

Future navigateToAllGroupsPage(context) async {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SubPage(),
      ));
}

Future navigateToSpecificGroupPage(context, String groupName) async {
  return Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => GroupPage(),
          settings: RouteSettings(arguments: groupName)));
}

class MyButton extends StatefulWidget {
  final String name;
  final String id;
  const MyButton({Key key, this.name, this.id}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  String _name;
  String _id;
  Category _scategory;
  @override
  void initState() {
    super.initState();
    _name = this.widget.name;
    _id = this.widget.id;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 400.0 / 2,
        width: 400.0 / 2,
        child: Column(
          children: [
            Center(
                child: Text(
              _name,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
              ),
            )),
            //StatefulSearchBar(),
            if (_id == '1')
              Image.asset('assets/images/pic1.jpg'),
            if (_id == '2')
              Image.asset('assets/images/pic2.jpg'),
            if (_id == '3')
              Image.asset('assets/images/pic2.jpg'),
            if (_id == '4')
              Image.asset('assets/images/pic4.jpg'),
          ],
        ),
      ),
      onTap: () {
        setSelectedId(_id);
        setSelectedCategory(_name);
        navigateToAllGroupsPage(context);
      },
    );
  }
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getSelectedCategory()),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            for (final grp in mockGroup)
              if (grp.categoryId == getSelectedId())
                SizedBox(
                    child: RaisedButton(
                  textColor: Colors.black,
                  color: Colors.blue[200],
                  child: Text(grp.name),
                  onPressed: () {
                    navigateToSpecificGroupPage(context, grp.name);
                  },
                ))
          ],
        ),
      ),
    );
  }
}

String selectedId;
String selectedCategory;
void setSelectedCategory(String category) {
  selectedCategory = category;
}

String getSelectedCategory() {
  return selectedCategory;
}

void setSelectedId(String id) {
  selectedId = id;
}

String getSelectedId() {
  print(selectedId);
  return selectedId;
}
