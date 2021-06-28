import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../dummy-data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(15),
        children: DUMMY_CATEGORIES
            .map(
              (category) =>
                  CategoryItem(category.id, category.title, category.color),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 2,
            mainAxisSpacing: 6,
            crossAxisSpacing: 6));
  }
}
