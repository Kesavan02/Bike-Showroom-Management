import 'package:flutter/material.dart';
import 'package:mini_pro/utils/utils.dart';
import 'package:mini_pro/Models/bikes.dart';

class BikesGrid extends StatelessWidget {
  const BikesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allBikes.bikes.length,
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(

          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20
              ),
            ],
          ),
        child: Column(
          children: [
            Image.asset(allBikes.bikes[i].path),
            Text(
              allBikes.bikes[i].title,
              style: basicHeading,
            ),
            Expanded(
              child: Text((allBikes.bikes[i].price).toString(),
                style: subHeading,
              ),
            ),
          ],
        ),
            ),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 2),
    );
  }
}
