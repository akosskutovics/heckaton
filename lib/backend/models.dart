import 'package:flutter/material.dart';

class Category {
  Category({this.name, this.id, this.groups});

  @required
  final String name;
  @required
  final String id;
  //TODO
  // @required final List<Group> groups;
  @required
  final List<int> groups;
  Type flutterLogo = FlutterLogo;
}

class Group {
  Group({this.categoryId, this.name, this.groupId, this.people, this.about});

  @required
  final String categoryId;
  @required
  final String name;
  @required
  final String groupId;
  @required
  final String about;

  //TODO
  // @required final List<Person> people;
  @required
  final List<int> people;
}

class Person {
  Person({this.name, this.email, this.password, this.groups});

  @required
  final String name;
  final String email;
  final String password;
  //TODO
  // final List<Group> groups;
  @required
  final List<int> groups;
}
