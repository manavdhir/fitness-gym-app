import 'package:fitness_app/screens/settings.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../widgets/searchBar.dart';
import 'dart:ui';
import 'package:fitness_app/models/categories.dart';
import '../data/categoriesData.dart';
import 'package:lottie/lottie.dart';

class CategoriesScreen extends StatelessWidget {
  Widget topIcons(Icon icon, String type, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (type == 'back') {
          Navigator.pop(context);
        } else if (type == 'settings') {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Settings();
          }));
        }
      },
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

  buildCategories(BuildContext context, Categories category) {
    return Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: category.backgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1.0, color: category.backgroundColor)),
        child: Row(
          children: [
            Container(
              height: 180,
              width: ((MediaQuery.of(context).size.width - 60) / 2.2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 180 / 2.3,
                    width: ((MediaQuery.of(context).size.width - 60) / 1.5),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        category.title,
                        style: TextStyle(fontFamily: 'Bungee', fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      category.description,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              width: ((MediaQuery.of(context).size.width - 60) / 1.6),
              child: Lottie.network(category.lottieUrl),
            )
          ],
        ));
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
                topIcons(Icon(Icons.arrow_back_ios), 'back', context),
                topIcons(Icon(Icons.settings), 'settings', context),
              ],
            ),
            Hero(
              tag: 'heroAmination',
              child: Text(
                'Categories',
                style: TextStyle(fontFamily: 'Bungee', fontSize: 30),
              ),
            ),
            SearchBar(),
            Container(
              height: MediaQuery.of(context).size.height - 250,
              width: MediaQuery.of(context).size.width - 10,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  Categories category = categories.categoriesModel[index];
                  return buildCategories(context, category);
                },
                itemCount: categories.categoriesModel.length,
                scrollDirection: Axis.vertical,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
