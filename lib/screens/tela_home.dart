import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/botao.dart';
import 'package:flutter_application_1/widgets/logo.dart';
import 'package:flutter_application_1/screens/rotas.dart';

class TelaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Logo(
              tamanho: 40, 
              mainAxisAlignment: MainAxisAlignment.center,
              corIcone: Color.fromARGB(255, 0, 77, 139),
              corTexto: Color.fromARGB(255, 0, 77, 139),
            ),
          ],
        ),
        actions: [
          Botao(
            width: 100, 
            height: 50, 
            texto: 'Log-out', 
            onPressed: () {
              Navigator.pop(context);
            }
          ),

          SizedBox(width: 10,),

          IconButton(
            icon: Icon(Icons.notifications, color: Color.fromARGB(255, 0, 77, 139), size: 35),
            onPressed: () {},
          ),
          
          IconButton(
            icon: Icon(Icons.menu, color: Color.fromARGB(255, 0, 77, 139), size: 40),
            onPressed: () {},
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: Text.rich(
                TextSpan(
                  text: 'Encontre o ',
                  style: TextStyle(
                    fontWeight: FontWeight(900),
                    fontSize: 40
                  ),
                  children: [
                    TextSpan(
                      text: 'Serviço',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 77, 139)
                      )
                    ),
                    TextSpan(text: ' ideal para você.')
                  ]
                )
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'O mercado selecionado para profissionais locais. Profissionais verificados, confiáveis ​​e bem perto.',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 88, 88, 88),
                  height: 1.6
                ),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar por qualquer serviço...',
                prefixIcon: Icon(Icons.search),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 218, 218, 218),
                  ),
                ),

                enabledBorder: InputBorder.none


              ),
            ),

            Row(
              children: [
                Text(
                  'Buscar por Categoria',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 88, 88, 88),
                    height: 1.6
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}

