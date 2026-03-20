import 'package:flutter/material.dart';

class TelaLogin extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, size: 150, color: Colors.white),
                Text(
                  'Faz',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 100
                  )

                )
              ],
            ),

            SizedBox(height: 40,),

            ElevatedButton(
              onPressed: (){
                
              }, 
              child: Text('Entrar em uma conta existente'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                minimumSize: Size(250,50),
              ),
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              onPressed: (){
                
              }, 
              child: Text('Cadastrar uma nova conta'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                minimumSize: Size(250,50)
              ),

            )
            
          ],
        ),
      );
    }
}