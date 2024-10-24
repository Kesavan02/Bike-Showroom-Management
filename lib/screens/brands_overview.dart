import 'package:flutter/material.dart';
import 'package:mini_pro/utils/utils.dart';
import 'package:mini_pro/widgets/brands_grid.dart';

class BikeBrands extends StatefulWidget {
  const BikeBrands({super.key});

  @override
  State<BikeBrands> createState() => _BikeBrandsState();
}

class _BikeBrandsState extends State<BikeBrands> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brands'),
        titleTextStyle: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          decoration: TextDecoration.none,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Available Brands',
              style: mainHeading,
            ),
          ),
          SizedBox(
            height: 17.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: BrandsGrid(),
          )
        ],
      ),
    );
  }
}
