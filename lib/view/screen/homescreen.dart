import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.shopping_basket_outlined),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(
        ),
        notchMargin: 10,
        child: Row(children: [
          Row(children: [
            MaterialButton(onPressed: (){},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home),
                  Text("Home")
                ],
              ),
            ),
            MaterialButton(onPressed: (){},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home),
                  Text("Home")
                ],
              ),
            ),
          ],),

          Spacer(),
          Row(children: [
            MaterialButton(onPressed: (){},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home),
                  Text("Home")
                ],
              ),
            ),
            MaterialButton(onPressed: (){},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home),
                  Text("Home")
                ],
              ),
            ),
          ],)
        ],),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("home")),
        ],
      ) ,
    );
  }
}
