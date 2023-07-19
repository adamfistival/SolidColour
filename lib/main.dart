import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solidcolour/features/color_changer/models/random_colour_generator.dart';
import 'package:solidcolour/features/color_changer/viewmodels/colour_changer_viewmodel.dart';
import 'package:solidcolour/features/color_changer/views/colour_change_screen.dart';

void main() {
  runApp(Main());
}

/// The root widget of the application.
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColourChangerViewModel(
        colorGenerator: RandomColourGenerator(),
      ),
      child: MaterialApp(
        home: ColourChangeScreen(),
      ),
    );
  }
}
