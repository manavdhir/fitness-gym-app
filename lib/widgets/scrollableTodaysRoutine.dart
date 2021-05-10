import 'package:flutter/material.dart';
import '../data/todaysRoutineData.dart';
import '../models/todaysRoutineExercise.dart';

class ScrollableTodaysRoutine extends StatelessWidget {
  buildTodaysRoutine(BuildContext context, TodaysRoutineExercise exercise) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width - 60,
      margin: EdgeInsets.all(10),
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
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
              image: NetworkImage(exercise.imageUrl),
              height: 180,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  exercise.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontFamily: 'Bungee', fontSize: 20),
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  exercise.description,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width - 10,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          TodaysRoutineExercise exercise =
              todaysRoutine.routineExercises[index];
          return buildTodaysRoutine(context, exercise);
        },
        itemCount: todaysRoutine.routineExercises.length,
      ),
    );
  }
}
