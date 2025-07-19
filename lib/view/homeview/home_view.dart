import 'package:flutter/material.dart';
import 'package:sameerhux/view/desktop/header/header_view.dart';
import 'package:sameerhux/view/desktop/herosection/herosection.dart';
import 'package:sameerhux/view/theme/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderView(),
            HeroSection(),
            Center(child: Text('Home View')),
          ],
        ),
      ),
    );
  }
}
