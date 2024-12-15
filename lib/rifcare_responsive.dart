library rifcare_responsive;
import 'package:flutter/material.dart';


class RifcareResponsive extends StatelessWidget {
  final Widget Function(BuildContext context, BoxConstraints constraints) builder;

  const RifcareResponsive({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => builder(context, constraints),
    );
  }

  /// Helper method to check device type
  static bool isMobile(BoxConstraints constraints) => constraints.maxWidth < 600;
  static bool isTablet(BoxConstraints constraints) =>
      constraints.maxWidth >= 600 && constraints.maxWidth < 1200;
  static bool isDesktop(BoxConstraints constraints) => constraints.maxWidth >= 1200;
}
