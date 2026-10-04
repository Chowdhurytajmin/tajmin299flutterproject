
import 'package:flutter/material.dart'; 
 
class Homepage extends StatelessWidget { 
  const Homepage({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
      return  
       Scaffold( 
        appBar: AppBar(title:Text("HomePage"),//appbar er jonno 
        centerTitle: true, 
        backgroundColor: const Color.fromARGB(255, 59, 138, 148),
        foregroundColor:Colors.white ,//appbar er colors cng hobe 
        //leading: Icon(Icons.home),//home sign ashbe size color cng kora barite 
        actions: [ 
          IconButton(onPressed:(){} , icon: Icon(Icons.search)), 
          IconButton(onPressed:(){} , icon: Icon(Icons.person)), 
 
        ],//multiple widget use kora jay icon buttons 
 
        ), 
        drawer: Drawer( 
          child: Column(children: [UserAccountsDrawerHeader 
          (accountName: Text("Name"),  
          accountEmail: Text("Email"), 
          decoration: BoxDecoration(color:const Color.fromARGB(255, 92, 107, 192),)), 
           
           
          ListTile(title: Text("Homepage"), 
          leading: Icon(Icons.home), 
          hoverColor: const Color.fromARGB(255, 197, 202, 233) 
          ,onTap: (){}), 
          Divider(), 
          Spacer(), 
            
          ListTile(title: Text("Profile"), 
          leading: Icon(Icons.person), 
          hoverColor: const Color.fromARGB(255, 187, 192, 230) 
          ,onTap: (){}), 
          ], 
          ), 
        ),//aita dile leading cmnt kore rakhbo 
 
        body:Padding( 
          padding: const EdgeInsets.all(10), 
          child: Row( 
           // mainAxisAlignment: MainAxisAlignment.end, onno side chole jay 
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.start, 
            //mainAxisAlignment: MainAxisAlignment.spaceAround, 
            children: [ 
              TextButton(onPressed: (){},  
              style: TextButton.styleFrom( 
                backgroundColor: const Color.fromARGB(255, 144, 164, 255), 
                foregroundColor: const Color.fromARGB(255, 30, 79, 100), 
                fixedSize: Size(100, 20), 
                side: BorderSide() 
                //elevation:10, 
                ), 
               
               child: Text("TextButton"),), 
               SizedBox(width: 10,), 
           
              ElevatedButton(onPressed: (){},  
              style: ElevatedButton.styleFrom( 
                backgroundColor: const Color.fromARGB(255, 121, 180, 203), 
                foregroundColor: const Color.fromARGB(255, 255, 255, 255), 
                fixedSize: Size(150, 20), 
                side: BorderSide() 
           
              ), 
               
              child:Text("ElevatedButton") ), 
           
              OutlinedButton(onPressed: (){}, child: Text("OutlineButton")), 
              IconButton(onPressed: (){}, icon:Icon(Icons.login)) 
            ], 
          ), 
        ), 
     floatingActionButton: FloatingActionButton(onPressed: (){},  
     tooltip: "Add", 
     foregroundColor:const Color.fromARGB(255, 255, 255, 255) , 
     shape: BeveledRectangleBorder(), 
     backgroundColor:const Color.fromARGB(255, 49, 104, 105) , 
     child: Icon(Icons.add),), 
     ); 
   
  } 
 
}

