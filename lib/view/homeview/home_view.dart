import 'package:flutter/material.dart';
import 'package:sameerhux/view/header/header_view.dart';
import 'package:sameerhux/view/theme/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(children: [HeaderView(), Center(child: Text('Home View'))]),
    );
  }
}
