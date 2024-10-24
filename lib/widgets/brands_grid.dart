import 'package:flutter/material.dart';
import 'package:mini_pro/Models/brands.dart';

class BrandsGrid extends StatelessWidget {
  const BrandsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: allBrands.brands.length,
        itemBuilder: (ctx, i) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(

            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(25.0)),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10
                ),
              ],
              image: DecorationImage(
                  image: AssetImage(allBrands.brands[i].imgPath),
              ),
            ),
          ),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
          (crossAxisCount: 2),
      ),
    );
  }
}

