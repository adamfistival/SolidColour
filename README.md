# Color Changer App in Flutter

A simple Flutter app that changes the background color every time the user taps on the screen.
This app utilizes the Provider package for state management and follows the Model-View-ViewModel (MVVM) architecture.

## Table of Contents

- [Good Naming Conventions](#good-naming-conventions)
- [Clean, DRY, and KISS](#clean-dry-and-kiss)
- [Structure](#structure)
- [Provider State Management](#provider-state-management)
- [Running on Android Emulator](#running-on-android-emulator)
- [Test](#unit-and-widget-test)

## Good Naming Conventions

Clear and descriptive names are used for classes, functions, and variables to improve code readability and maintainability.

- `RandomColourGenerator`: A class for generating random colours.
- `ColourChangerViewModel`: A ViewModel class for handling colour changes.
- `ColourChangeScreen`: A UI class for rendering colour changes on the screen.

## Clean, DRY, and KISS

The code adheres to the principles of Clean, DRY (Don't Repeat Yourself), and KISS (Keep it Simple, Stupid).

- **Clean**: Each class or function has a single, clear responsibility.
- **DRY**: Repetition is minimized; colour generation is defined once and used as needed.
- **KISS**: The code is straightforward and easy to follow.

## Structure

The app is organized into the following structure:

- `lib/`: Contains all Dart code.
- `main.dart`: The application's entry point.
- `features/color_changer/`: Contains classes for the Color Changer feature.
  - `models/`: Contains the `RandomColourGenerator` class.
  - `viewmodels/`: Contains the `ColourChangerViewModel` class.
  - `views/`: Contains the `ColourChangeScreen` class.

## Provider State Management

The Provider package is used for efficient state management by providing shared data to widgets in the tree.
The `Consumer` widget in the `ColourChangeScreen` class listens for changes in the `ColourChangerViewModel` and rebuilds the UI when the colour changes.

## Running on Android Emulator

Follow these steps to run the app in an Android emulator:

1. Install the Android SDK and set up an emulator.
2. Open a terminal and navigate to the root of the Flutter project.
3. Run `flutter doctor` to check for any dependencies issues.
4. Launch your emulator with `flutter emulators --launch <emulator_id>`.
5. Run `flutter run` to start the app on the emulator.

## Test 

Provided two type of test Unit Test and Widget Test

## Dart Code Metric
PS C:\Users\DUN59\Documents\FlutterIdeas\solid_colour\SolidColour> flutter analyze
Analyzing SolidColour...                                                
No issues found! (ran in 19.1s)
PS C:\Users\DUN59\Documents\FlutterIdeas\solid_colour\SolidColour> dart analyze;   
Analyzing SolidColour...
No issues found!
PS C:\Users\DUN59\Documents\FlutterIdeas\solid_colour\SolidColour> dart run dart_code_metrics:metrics analyze lib test;
Building package executable... (9.2s)
Built dart_code_metrics:metrics.
This package is entering the deprecation process and will be fully discontinued on July 16th.
You can read more in this blog post https://dcm.dev/blog/2023/06/06/announcing-dcm-free-version-sunset/.

We are grateful to you for being a DCM user. If you are a DCM contributor, you can apply for a special license, feel free to reach out to info@dcm.dev.

If you think DCM is valuable and it helps you, please consider to upgrade to the new Individuals or Teams version.

To hide this message pass the 'disable-sunset-warning' option.

✔ Analysis is completed. Preparing the results: 15.8s

✔ no issues found!
PS C:\Users\DUN59\Documents\FlutterIdeas\solid_colour\SolidColour> dart run dart_code_metrics:metrics check-unused-files lib test;
This package is entering the deprecation process and will be fully discontinued on July 16th.
You can read more in this blog post https://dcm.dev/blog/2023/06/06/announcing-dcm-free-version-sunset/.

We are grateful to you for being a DCM user. If you are a DCM contributor, you can apply for a special license, feel free to reach out to info@dcm.dev.

If you think DCM is valuable and it helps you, please consider to upgrade to the new Individuals or Teams version.

To hide this message pass the 'disable-sunset-warning' option.

✔ Analysis is completed. Preparing the results: 14.2s

✔ no unused files found!
PS C:\Users\DUN59\Documents\FlutterIdeas\solid_colour\SolidColour> dart run dart_code_metrics:metrics check-unused-l10n lib test;
This package is entering the deprecation process and will be fully discontinued on July 16th.
You can read more in this blog post https://dcm.dev/blog/2023/06/06/announcing-dcm-free-version-sunset/.

We are grateful to you for being a DCM user. If you are a DCM contributor, you can apply for a special license, feel free to reach out to info@dcm.dev.

If you think DCM is valuable and it helps you, please consider to upgrade to the new Individuals or Teams version.

To hide this message pass the 'disable-sunset-warning' option.

✔ Analysis is completed. Preparing the results: 7.3s

✔ no unused localization found!
