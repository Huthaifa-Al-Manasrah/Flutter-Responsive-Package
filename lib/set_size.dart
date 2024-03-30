import 'package:responsive_testing/responsive.dart';

class SetSize{
  static double getWidgetResponsiveHeight(double widgetHeight) {
    double? screenHeight = Responsive.screenHeight;
    return (widgetHeight / 926.0) * screenHeight!;
  }

  static double getWidgetResponsiveWidth(double widgetWidth) {
    double? screenWidth = Responsive.screenWidth;
    return (widgetWidth / 428.0) * screenWidth!;
  }
}