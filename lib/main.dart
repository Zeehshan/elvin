import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'DeliveryScreen.dart';
import 'DirectionsProvider.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (_) => DirectionProvider(),
      child: MaterialApp(
        title: 'Directorio Medico',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DeliveryScreen(),
      ),
    );
  }
}


