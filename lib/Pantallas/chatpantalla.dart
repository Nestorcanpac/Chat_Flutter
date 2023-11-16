
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:  const Padding(
            padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://sm.ign.com/ign_latam/news/m/mortal-kom/mortal-kombat-1-pre-order-beta-has-players-loving-johnny-cag_6ns4.jpg"),
          ),
        ),
        title: Text("Johnny Cage"),
        centerTitle: false,
      ),
      body: _ChatContenedor(),
    );
  }
}

class _ChatContenedor extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SafeArea(child: Column(
     children: [
       Expanded(child:
       ListView.builder(itemCount:100,itemBuilder:(context, index){
         int separador=0;
         while(separador<100){
           String fraseCage= "Hola de parte de Johnny Cage";
           double radio=fraseCage.length*5.0;
           if(separador % 2==0){
             return CircleAvatar(
               backgroundColor: Colors.blue,
               radius: radio,
               child: Text(fraseCage,style: TextStyle(color: Colors.white),),
             );
           }
         }

         return Text("Index: $index");
       })
       )

     ],
   )
   );
  }
}

