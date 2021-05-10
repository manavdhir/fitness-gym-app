import 'package:fitness_app/models/categories.dart';
import 'package:fitness_app/models/categoriesModel.dart';
import 'package:flutter/cupertino.dart';

final categories = CategoriesModel(categoriesModel: [
  Categories(
      backgroundColor: Color(0XFFcabbe9),
      lottieUrl: 'https://assets9.lottiefiles.com/packages/lf20_oocpjo.json',
      title: 'Weight Loss',
      description:
          'Exercise is helpful for weight loss and maintaining weight loss. Exercise can increase metabolism, or how many calories you burn in a day'),
  Categories(
      backgroundColor: Color(0XFFffcef3),
      lottieUrl: 'https://assets5.lottiefiles.com/packages/lf20_TAs0Zd.json',
      title: 'Aerobic Exercises',
      description:
          'Aerobic exercise is any type of cardiovascular conditioning. It can include activities like brisk walking, swimming, running, or cycling.'),
  Categories(
      backgroundColor: Color(0XFFa1eafb),
      lottieUrl: 'https://assets10.lottiefiles.com/packages/lf20_WFoOPC.json',
      title: 'Core Exercises',
      description:
          'Core exercises train the muscles in your pelvis, lower back, hips and abdomen to work in harmony. This leads to better balance and stability.'),
  Categories(
      backgroundColor: Color(0XFFfccde2),
      lottieUrl: 'https://assets1.lottiefiles.com/packages/lf20_efL1SF.json',
      title: 'Weight Training',
      description:
          'Weight training is a type of strength training that uses weights for resistance.It makes the muscles stronger'),
  Categories(
      backgroundColor: Color(0XFFb4f1f1),
      lottieUrl: 'https://assets7.lottiefiles.com/packages/lf20_Ajcy3F.json',
      title: 'Abs Exercises',
      description:
          'Abdominal exercises are type of strength exercise those that affect the abdominal muscles colloquially known as the stomach muscles or abs.'),
  Categories(
      backgroundColor: Color(0XFFf4fa9c),
      lottieUrl:
          'https://assets2.lottiefiles.com/private_files/lf30_zzItmF.json',
      title: 'Yoga Assans',
      description:
          'Yoga in Indian traditions, however, is more than physical exercise; it has a meditative and spiritual core.'),
]);
