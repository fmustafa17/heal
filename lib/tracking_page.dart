import 'package:flutter/material.dart';

import 'category.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage();

  //Correct number of rows for the ListView.
  Widget _buildTrackingWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  // Returns list of categories.
  List<Category> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Category(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

  }
}