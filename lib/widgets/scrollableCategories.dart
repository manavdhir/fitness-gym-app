import 'dart:ui';

import 'package:fitness_app/models/categories.dart';
import 'package:fitness_app/models/categoriesModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../data/categoriesData.dart';

class FeaturedCategories extends StatelessWidget {
  buildCategories(BuildContext context, Categories category) {
    return Container(
        height: 180,
        width: MediaQuery.of(context).size.width - 60,
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
                    height: 180 / 1.7,
                    width: ((MediaQuery.of(context).size.width - 60) / 2.2),
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
                      'Expand All',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              width: ((MediaQuery.of(context).size.width - 60) / 2),
              child: Lottie.network(category.lottieUrl),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width - 10,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          Categories category = categories.categoriesModel[index];
          return buildCategories(context, category);
        },
        itemCount: categories.categoriesModel.sublist(0, 3).length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
