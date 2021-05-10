import 'package:fitness_app/constants/constants.dart';
import 'package:fitness_app/screens/todaysRoutine.dart';
import 'package:flutter/material.dart';
import '../widgets/scrollable_featured_exercises.dart';
import '../widgets/scrollableTodaysRoutine.dart';
import '../widgets/scrollableCategories.dart';
import '../screens/categoriesScreen.dart';
import '../widgets/searchBar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget topIcons(Icon icon) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          margin: EdgeInsets.only(top: 25),
          color: bannerBackground,
          height: 40,
          width: 40,
          child: icon,
        ),
      ),
    );
  }

  Widget dashboardTiles(Icon icon, Color color, String title) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 50,
            width: 50,
            child: icon,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: color,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }

  Widget sectionHeading(String heading, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            heading,
            style: TextStyle(fontFamily: 'Bungee', fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  if (heading == 'Categories') {
                    return CategoriesScreen();
                  } else if (heading == 'Todays Routine') {
                    return TodaysRoutine();
                  }
                }));
              },
              child: Icon(Icons.arrow_forward_ios)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  topIcons(Icon(Icons.menu)),
                  topIcons(Icon(Icons.settings)),
                ],
              ),
              Hero(
                tag: 'heroAmination',
                child: Text(
                  'Dare To Be Great',
                  style: TextStyle(fontSize: 25, fontFamily: 'Bungee'),
                ),
              ),
              SearchBar(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  dashboardTiles(
                      Icon(Icons.dashboard), dashboardColor, 'Dashboard'),
                  dashboardTiles(
                      Icon(Icons.library_books), coursesColor, 'Courses'),
                  dashboardTiles(
                      Icon(Icons.multiline_chart), analyticsColor, 'Analytics'),
                  dashboardTiles(Icon(Icons.supervised_user_circle),
                      profileColor, 'Profile')
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 10, right: 10),
                    height: 250,
                    width: 130,
                    color: bannerBackground,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'All Featured Exercises',
                            style: TextStyle(
                                fontFamily: 'Bungee',
                                fontSize: 18,
                                letterSpacing: 0.5),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Exercise not only changes your body, it changes your mind, your attitude and your mood.',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                  FeaturedExercises(),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              sectionHeading('Todays Routine', context),
              ScrollableTodaysRoutine(),
              sectionHeading('Categories', context),
              FeaturedCategories(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
