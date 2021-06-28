import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color, {Key key})
      : super(key: key);

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).canvasColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Text(title, style: Theme.of(context).textTheme.headline1),
        decoration: BoxDecoration(
            boxShadow: [
              const BoxShadow(
                  color: Color.fromRGBO(243, 244, 246, 1),
                  spreadRadius: -14,
                  blurRadius: 14),
              const BoxShadow(
                color: Color.fromRGBO(31, 41, 55, 1),
              ),
            ],
            // border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
