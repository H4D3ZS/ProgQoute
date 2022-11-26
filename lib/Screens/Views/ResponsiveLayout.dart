import 'package:flutter/material.dart';
import 'package:progqou/Screens/Views/desktop/desktop.dart';
import 'package:progqou/Screens/Views/mobile/mobile.dart';
import 'package:progqou/Screens/Views/tablet/tablet.dart';
import 'const.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < constants.kDesktopBreakpoint &&
            constraints.maxWidth >= constants.kTabletBreakpoint) {
          return const TabletMain();
        } else if (constraints.maxWidth < constants.kTabletBreakpoint) {
          return const MobileMain();
        } else {
          return const DesktopMain();
        }
      },
    );
  }
}
