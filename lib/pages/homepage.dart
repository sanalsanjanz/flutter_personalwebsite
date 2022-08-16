import 'package:flutter/material.dart';
import 'package:website/pages/desktopview.dart';
import 'package:website/pages/mobileview.dart';
import 'package:website/pages/tabletview.dart';
import 'package:website/responsive/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        mobile: MobileView(),
        tablet: TabletView(),
        desktop: DesktopView(),
      ),
    );
  }
}
