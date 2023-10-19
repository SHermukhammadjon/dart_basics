import 'package:flutter/material.dart';


void main(List<String> args) 
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    
    theme: ThemeData(primarySwatch:  Colors.blue),
    
    home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Hello Flutter",
            selectionColor: Colors.blueAccent,
            style: TextStyle(fontSize: 25.0, color: Colors.white))
          ),

    
        // floatingActionButton: FloatingActionButton(
        //   onPressed : (){debugPrint("Button presed");},
        //   backgroundColor: Colors.yellowAccent,
          
        //   child: const Icon(Icons.apps, color: Colors.black, size: 40.0,)),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      
        body: const Column(children: <Widget>
          [
            Text("Flutter appp", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber)),

            Row(
              children: <Widget>[
              //    Container(child: Column(
              //     width : 200,
              //     height : 200,
              //     color : Colors.green,
              //    ))
              ]
              )
            // Container(width: 200, height: 200, color: Colors.greenAccent, )
          ])
               
        
          
    )));
}

