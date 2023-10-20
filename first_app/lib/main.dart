import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


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

      
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[           
               const Text("Rasimli sahifa", style: TextStyle(fontSize: 30, color: Colors.amber)),

               IntrinsicHeight( 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(4.0),
                      // color: Colors.green,
                      child: Column(children: <Widget>[FadeInImage.assetNetwork(
                        placeholder: "lib/images/loanding.gif", image: 'https://picsum.photos/300/300?random=1000')],))),

                  Expanded(child: Container(
                    margin: const EdgeInsets.all(4.0),
                    // color: Colors.green,
                    child: Column(children: <Widget>[FadeInImage.assetNetwork(
                        placeholder: "lib/images/loanding.gif", image: 'https://picsum.photos/300/300?random=1001')],))),
                  
                  Expanded(child: Container(
                    margin: const EdgeInsets.all(4.0),
                    // color: Colors.green,
                    child: Column(children: <Widget>[FadeInImage.assetNetwork(
                        placeholder: "lib/images/loanding.gif", image: 'https://picsum.photos/300/300?random=1003')],))),
                ]))
            ],)
               
        
          
    )));
}

