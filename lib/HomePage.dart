import 'package:flutter/material.dart';
import 'package:whatsapp_ui/ChatList.dart';
import 'package:whatsapp_ui/_chat_page.dart';


class HomePage extends StatefulWidget {

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 List<ChatList> chats=List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(

          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green.shade500,
            foregroundColor: Colors.white,
            shape: CircleBorder(),
            onPressed: (){
setState(() {
  chats.add(ChatList(name: "Aditya", message: 'hello Bhai Kya ho rha hai?'));

});

          },
          child: Icon(Icons.add),
          ),

          appBar: AppBar(
            backgroundColor: Colors.green.shade400,
            foregroundColor: Colors.white,
            title: Text('Whatsapp',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            bottom: TabBar(
              labelColor: Colors.white,
                tabs: [
              Tab(text: 'Chats',),
                  Tab(text:'Status'),
                  Tab(text:'Calls')
            ]
            ),
          ),


          body: TabBarView(children: [

            Container(

              child:ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (context,index)=>ChatPage(
                  name: chats[index].name,
                  message: chats[index].message
              ))

            ),



            Container(
              child: Center(
                child: Text('Status'),
              ),
            ),



            Container(
              child: Center(
                child: Text('Calls'),
              ),
            ),

          ]),


        )
    );
  }
}
