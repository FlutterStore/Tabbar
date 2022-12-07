import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabbarr(),
    );
  }
}

class Tabbarr extends StatefulWidget {
  const Tabbarr({super.key});

  @override
  State<Tabbarr> createState() => _TabbarrState();
}

class _TabbarrState extends State<Tabbarr> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text('TabBar',style: TextStyle(fontSize: 15)),
          bottom: const TabBar(
            indicatorColor: Colors.green,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
            ),
            Center(
              child: Text("It's rainy here",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
            ),
            Center(
              child: Text("It's sunny here",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
            ),
          ],
        ),
      ),
    );
  }
}
