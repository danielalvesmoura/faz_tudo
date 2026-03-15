import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_controller.dart';
import 'package:flutter_application_1/widgets/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return AnimatedBuilder( 
      animation: AppController.instance,
      builder: (context,child) {
        return MaterialApp(
          home: HomePage(),
          theme: ThemeData(
            primarySwatch: Colors.red, 
            brightness: AppController.instance.temaEscuro ? Brightness.dark : Brightness.light),
        );
      }
    );
  }
}
