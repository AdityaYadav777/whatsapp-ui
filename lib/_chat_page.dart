import 'package:flutter/material.dart';


class ChatPage extends StatelessWidget {

  final String name;
  final String message;

  ChatPage({super.key,required this.message,required this.name});

  @override
  Widget build(BuildContext context) {
    return


     Column(

       children:[ Padding(
         padding: EdgeInsets.all(8),
         child: GestureDetector(
           onTap: (){},
           child: Container(

             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),

             ),

             child: ListTile(

               leading: CircleAvatar(
                 maxRadius: 30,
                 backgroundColor: Colors.green.shade200,
                 foregroundColor: Colors.white,
                 child: Icon(Icons.person),
               ),
               title:Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   Text(message)
               ],
               ),

               trailing: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text('10:30 am',style: TextStyle(color: Colors.green,),),
                   SizedBox(height: 4,),
                   CircleAvatar(

                    foregroundColor: Colors.white,
                     maxRadius: 10,
                     backgroundColor:  Colors.green,
                     child: Text('1',style: TextStyle(fontSize: 9),),
                   )
                 ],
               )
             ),

           ),
         ),
       ),
    ]
     );

  }
}


