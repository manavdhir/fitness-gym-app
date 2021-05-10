import '../models/exercise.dart';
import '../models/featuredExerciseModel.dart';

final ex = FeaturedExercise(scrollableFeaturedExercises: [
  Exercise(
      imageUrl:
          'https://image.freepik.com/vector-gratis/joven-atletico-haciendo-flexiones-pecho-gimnasio_24911-52795.jpg',
      name: 'Pushups',
      rating: 4,
      type: 'Core Exercise'),
  Exercise(
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/000/266/139/non_2x/vector-yoga-class-illustration.jpg',
      name: 'Yoga',
      rating: 5,
      type: 'Aerobic Exercise'),
  Exercise(
      imageUrl:
          'https://images.all-free-download.com/images/graphicthumb/sport_painting_weight_lifting_man_sketch_cartoon_character_6844024.jpg',
      name: 'Weight Training',
      rating: 4,
      type: 'Strength Exercise'),
]);
