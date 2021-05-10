import 'package:fitness_app/models/exercise.dart';
import 'package:fitness_app/widgets/rating_stars.dart';
import 'package:flutter/material.dart';
import '../data/featuredExerciseData.dart';

class FeaturedExercises extends StatelessWidget {
  _buildFeaturedExercises(BuildContext context, Exercise exercise) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 250,
      width: 130,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1.0, color: Colors.grey[200])),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image(
              image: NetworkImage(
                exercise.imageUrl,
              ),
              width: 130,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '${exercise.name}',
            style: TextStyle(fontFamily: 'Bungee', fontSize: 12),
          ),
          SizedBox(
            height: 15,
          ),
          RatingStars(
            rating: exercise.rating,
          ),
          SizedBox(
            height: 15,
          ),
          Text(exercise.type),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: MediaQuery.of(context).size.width - 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ex.scrollableFeaturedExercises.length,
        itemBuilder: (BuildContext context, int index) {
          Exercise exercise = ex.scrollableFeaturedExercises[index];
          return _buildFeaturedExercises(context, exercise);
        },
      ),
    );
  }
}
