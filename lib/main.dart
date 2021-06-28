import 'dart:ui';

import 'package:flutter/material.dart';

import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food',
      theme: ThemeData(
          primaryColor: Colors.grey[900],
          accentColor: Colors.black38,
          canvasColor: Colors.grey[800],
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Colors.black45,
              ),
              bodyText2: TextStyle(
                color: Colors.black38,
              ),
              headline1: TextStyle(
                  fontSize: 24,
                  fontFamily: 'RobotoCondensed',
                  color: Colors.white),
              headline2: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed-Italic',
                  fontStyle: FontStyle.italic,
                  color: Colors.black54))),
      home: TabsScreen(),
      routes: {
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen()
      },
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
    );
  }
}
