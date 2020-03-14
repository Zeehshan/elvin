//import 'package:drdir/screens/especialidad_screen.dart';
//import 'package:drdir/widgets/destination_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_elevinp/widgets/destination_welcome.dart';
//import 'package:drdir/widgets/destination_welcome.dart';
//import 'package:fasty_delivery/widgets/destination_carousel.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: DestinationWelcome(),
      ),
    );
  }
}
