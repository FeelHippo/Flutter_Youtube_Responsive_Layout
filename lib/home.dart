import 'package:flutter/material.dart';
import 'package:responsive_example/responsive/layout.dart';
import 'package:responsive_example/responsive/mobile.dart';
import 'package:responsive_example/responsive/desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}