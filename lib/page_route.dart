import 'package:flutter/material.dart';
import 'tracking_page.dart';

final _backgroundColor = Colors.pink[100];

class PageRoute extends StatelessWidget {
  const PageRoute();

  static const _pageNames = <String>[
    'Tracking',
    'Journal',
    'PlaceHolder',
    'Settings',
  ];
  static const _icons = <IconData>[
    Icons.cake,
    Icons.party_mode,
    Icons.people_outline,
    Icons.pregnant_woman,
  ];

  @override
  Widget build(BuildContext context) {
    // final categories = <Category>[];

    // for (var i = 0; i < _categoryNames.length; i++) {
    //   categories.add(Category(
    //     name: _categoryNames[i],
    //     color: _baseColors[i],
    //     iconLocation: _icons[i],
    //     units: _retrieveUnitList(_categoryNames[i]),
    //   ));
    // }
  }
}