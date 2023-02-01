import 'package:flutter/material.dart';
import 'package:shopmart/general/utils/colors.dart';
import 'package:shopmart/widgets/appbar/k_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.background,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: KAppBar(),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
