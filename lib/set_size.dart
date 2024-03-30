import 'package:responsive_testing/responsive.dart';

class SetSize{
  static double getWidgetResponsiveHeight(double widgetHeight) {
    double? screenHeight = Responsive.screenHeight;
    double? customHeight = Responsive.customHeight;
    return (widgetHeight / customHeight!) * screenHeight!;
  }

  static double getWidgetResponsiveWidth(double widgetWidth) {
    double? screenWidth = Responsive.screenWidth;
    double? customWidth = Responsive.customWidth;
    return (widgetWidth / customWidth!) * screenWidth!;
  }
}