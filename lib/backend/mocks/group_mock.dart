import 'package:competition/backend/models.dart';
//import 'package:flutter/material.dart';

String nativeAbout =
    'This is about section of a specific group, will be implemented later';
final mockGroup = <Group>[
  // Study groups
  Group(
      categoryId: '1',
      name: 'IT',
      groupId: '1',
      people: [1, 2],
      about: nativeAbout),
  Group(categoryId: '1', name: 'Functions', groupId: '1', people: [1, 2]),
  Group(
      categoryId: '1',
      name: 'Regional dishes',
      groupId: '1',
      people: [1, 2],
      about: nativeAbout),
  Group(
      categoryId: '1',
      name: 'Sign Language',
      groupId: '1',
      people: [1, 2],
      about: nativeAbout),
  Group(categoryId: '1', name: 'Guitar', groupId: '1', people: [1, 2]),
  Group(categoryId: '1', name: 'German', groupId: '1', people: [1, 2]),
  Group(categoryId: '1', name: 'Polish food', groupId: '1', people: [1, 2]),
  Group(categoryId: '1', name: 'Capuera', groupId: '1', people: [1, 2]),
  Group(categoryId: '1', name: 'Rollerblades', groupId: '1', people: [1, 2]),
  Group(categoryId: '1', name: 'Self defense', groupId: '1', people: [1, 2]),
  Group(categoryId: '1', name: 'Gardening', groupId: '1', people: [1, 2]),
  Group(categoryId: '1', name: 'Programming', groupId: '1', people: [1, 2]),
  Group(categoryId: '1', name: 'Discrete Maths', groupId: '1', people: [1, 2]),
  Group(categoryId: '1', name: 'Danish', groupId: '2', people: [1]),
  Group(
      categoryId: '1',
      name: 'Data Structures',
      groupId: '3',
      people: [1, 2, 3, 4]),
  Group(categoryId: '1', name: 'French', groupId: '1', people: [1, 2, 3, 4]),
  Group(categoryId: '1', name: 'Flutter', groupId: '4', people: [1, 2, 3, 4]),

  // Play groups
  Group(
      categoryId: '2', name: 'Basketball', groupId: '4', people: [1, 2, 3, 4]),
  Group(categoryId: '2', name: 'LOL', groupId: '4', people: [1, 2, 3, 4]),
  Group(categoryId: '2', name: 'Cards', groupId: '4', people: [1, 2, 3, 4]),
  Group(
      categoryId: '2', name: 'Board games', groupId: '4', people: [1, 2, 3, 4]),

  //Eat Groups
  Group(categoryId: '2', name: 'Mexican>', groupId: '4', people: [1, 2, 3, 4]),
  Group(categoryId: '3', name: 'Asian', groupId: '4', people: [1, 2, 3, 4]),
  Group(
      categoryId: '3',
      name: 'Cook together',
      groupId: '4',
      people: [1, 2, 3, 4]),
  Group(categoryId: '3', name: 'Buritos', groupId: '4', people: [1, 2, 3, 4]),
  Group(
      categoryId: '3',
      name: 'Flamen restaurant buffet',
      groupId: '4',
      people: [1, 2, 3, 4]),
  Group(
      categoryId: '3',
      name: 'Pizza lovers',
      groupId: '4',
      people: [1, 2, 3, 4]),
  Group(
      categoryId: '3', name: 'Eat Healthy', groupId: '4', people: [1, 2, 3, 4]),

  // Help Groups
  Group(
      categoryId: '4',
      name: 'Danish Rules',
      groupId: '4',
      people: [1, 2, 3, 4]),
  Group(categoryId: '4', name: 'SU', groupId: '4', people: [1, 2, 3, 4]),
  Group(
      categoryId: '4',
      name: 'Communication  (Buses,Trains)',
      groupId: '4',
      people: [1, 2, 3, 4]),
  Group(
      categoryId: '4',
      name: 'Walking my batman',
      groupId: '4',
      people: [1, 2, 3, 4]),
];
