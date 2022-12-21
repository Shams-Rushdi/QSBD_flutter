import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final _controller = TextEditingController();
 final _controller2 = TextEditingController();
 printInputData(){
   _controller.dispose()
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        elevation: 5.0,
        leading:const Icon(Icons.cabin_outlined),
        actions: [
          IconButton(
            tooltip: 'Open Shopping Cart',
              onPressed: (){

              },
              icon: const Icon(Icons.person_add)),

        ],
      ),
      body: Column(
        children:
          // Container(
          //   height: 100,
          //   width: double.infinity ,
          //   margin: EdgeInsets.all(1.5),
          //   color: Colors.grey,
          // ),
           [
            Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: TextField(
                // obscuringCharacter: "*",
                //keyboardType: TextInputType.text,
                controller: _controller,
                onChanged: (value){

                },
              ),
            ),
             Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: TextField(
                // obscuringCharacter: "*",
                //keyboardType: TextInputType.text,
                controller: _controller2,
                onChanged: (value){

                },
              ),
            ),
             TextButton(
               style:   TextButton.styleFrom(
                 padding: EdgeInsets.symmetric(
                   horizontal: 50,
                   vertical: 5
                 ),
                 backgroundColor: Colors.deepOrange
               ),

                 onPressed:(){
                    printInputData();
                 },
                 child: Text("Button")
             ),
          ]




      ),
    );
  }
}


