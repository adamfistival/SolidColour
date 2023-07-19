import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solidcolour/features/color_changer/viewmodels/colour_changer_viewmodel.dart';

/// `ColourChangeScreen` is a stateless widget that serves as the View in the
/// Model-View-ViewModel (MVVM) architecture of the application.
///
/// This widget is responsible for displaying a screen with a background color
/// that changes every time the user interacts with it.
///
/// The `ColourChangeScreen` uses a `Consumer` of `ColorChangerViewModel` to
/// listen for changes in the color and rebuild itself whenever the color
/// changes.
///
/// The user can change the color by tapping anywhere on the screen. This
/// interaction triggers the `generateNewColor` method of the
/// `ColorChangerViewModel`, which generates a new color and notifies the
/// listeners of the change.
///
/// The `AnimatedContainer` widget is used to smoothly transition between
/// colors. The duration of the animation is set to 300 milliseconds.
///
/// The `GestureDetector` widget is used to detect tap events and trigger the
/// color change.
///
/// The `AppBar` contains a centered title that reads 'Ontap Colour Generator'.
class ColourChangeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Ontap Colour Generator')),
      ),
      body: Center(
        child: Consumer<ColourChangerViewModel>(
          builder: (context, viewModel, _) => GestureDetector(
            onTap: viewModel.generateNewColor,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: double.infinity,
              height: double.infinity,
              color: viewModel.currentColor, // Update the color property
              child: const Center(
                child: Text(
                  "Hello there",
                  textScaleFactor: 6,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
