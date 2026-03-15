import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('FazTudo', style: TextStyle(color: Colors.white)),backgroundColor: Colors.red,
      ),

      body: Center(
        child: Switch(
            value: AppController.instance.temaEscuro,
            onChanged: (value) {
              AppController.instance.mudarTema();
            },
          ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            contador++;
          })
        },

        backgroundColor: Colors.red,
        child: Icon(Icons.add,color: Colors.white,)
      
      ),

    );
  }
}