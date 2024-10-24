import 'package:flutter/material.dart';
import 'package:mini_pro/screens/about.dart';
import 'package:mini_pro/widgets/logo.dart';

class BikeHome extends StatefulWidget {
  const BikeHome({super.key});

  @override
  State<BikeHome> createState() => _BikeHomeState();
}

class _BikeHomeState extends State<BikeHome> {

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: SafeArea(
        child: Drawer(
          surfaceTintColor: Colors.white,
          child: Column(
            children: [
              Container(
                color: Colors.grey,
                child: const Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                      width: double.maxFinite,
                    ),
                    Center(
                      child: Logo(),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('MachArc',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0.2,
                color: Colors.black,
              ),
              ListTile(
                title: const Text('D Spares'),
                leading: const Icon(Icons.design_services),
                iconColor: Colors.grey,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutBikes()));
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: displayWidth,
        height: displayHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background_home.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
