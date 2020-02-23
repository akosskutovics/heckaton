import 'package:flutter/material.dart';
import 'package:competition/backend/mocks/group_mock.dart';

class GroupPage extends StatefulWidget {
  final Color color = Colors.transparent;
  GroupPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return GroupPageState();
  }
}

class GroupPageState extends State<GroupPage> {
  Image img;
  String _name;
  String _id;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String name = ModalRoute.of(context).settings.arguments;
    print(name);
    print('after the name');
    return Scaffold(
        body: ListView(
      children: <Widget>[
        for (final group in mockGroup)
          if (name == group.name)
            Row(
              children: <Widget>[
                Container(),
                Text(group.name),
              ],
            )
      ],
    ));
  }
}
