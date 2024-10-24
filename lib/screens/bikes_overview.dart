import 'package:flutter/material.dart';
import 'package:mini_pro/utils/utils.dart';
import '../widgets/bikes_grid.dart';

class BikesOverviewScreen extends StatelessWidget {
  const BikesOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        title: const Text(
          'Bikes',
          style: subHeading,
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Available Bikes',
              style: mainHeading,
              ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: BikesGrid(),
          )
        ],
      ),
    );
  }
}
