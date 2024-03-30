# Flutter Responsive Package

This package is designed to make Flutter app development more responsive by adapting widgets' sizes based on the device's screen size and the design specifications used during development. It calculates the difference between the size of the device you're currently developing on and the size of the device the designer used in Figma, allowing for a more consistent UI across various screen sizes.

## How it Works

The package consists of two main classes: `SetSize` and `Responsive`. Here's a brief overview of each:

### SetSize

- `getWidgetResponsiveHeight(double widgetHeight)`: Calculates the responsive height of a widget based on the specified height in the Figma design.
- `getWidgetResponsiveWidth(double widgetWidth)`: Calculates the responsive width of a widget based on the specified width in the Figma design.

### Responsive

- `init(BuildContext context)`: Initializes the package by extracting the screen dimensions and orientation of the device being used for development.

## Usage

Here's how you can use this package in your Flutter project:

1. First, initialize the `Responsive` class in your widget's build method:

```dart
Responsive().init(context);
```

2. Then, use the `SetSize` class to make your widgets responsive. For example:

```dart
SizedBox(
  height: SetSize.getWidgetResponsiveHeight(20),
),
```

This will ensure that the height of the `SizedBox` is responsive, adapting to different screen sizes while maintaining the proportions defined in the Figma design.

## Note

- Ensure that you have installed the package and imported it into your Dart file before using it.
- Make sure to call `Responsive().init(context)` in the build method of your widgets to initialize the package correctly.

## Contributions

Contributions to this package are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or create a pull request on GitHub.


**Happy Fluttering!** 🚀
