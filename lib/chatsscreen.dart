import 'package:flutter/material.dart';

import 'chatsbutton.dart';

class Chat {
  final String name;
  final String message;
  final String time;
  NetworkImage image = NetworkImage('');

  Chat(this.name, this.message, this.time, this.image);
}
class Chats extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChatsState();
  }
}
class ChatsState extends State<Chats>
{
  @override

  final List<Chat> chats = [
    Chat("Malu", "Hello!", "9:00 AM",
        NetworkImage('https://wallpapers.com/images/featured/cute-profile-picture-s52z1uggme5sj92d.jpg')),
    Chat("Sejal", "Hi there!", "10:30 AM",
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR47eGNB4uktvhbGIeWWDPNl-0L1EBWByWRkg&usqp=CAU')),
    Chat("Rutva", "Hey!", "11:45 AM",
        NetworkImage(''
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVNTQ-qv1yThezkWcB9KdTmq4H3kjorujzOw&usqp=CAU'
        )),
    Chat("Tvisha", "Hello!", "2:00 PM",
        NetworkImage(''
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFacn0pb12vsSRTPKRUDnxFrP8sj7st13r8A&usqp=CAU'
        )),
    Chat("Mansi", "Hi there!", "4:30 PM",
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxK8jqUz6OCl3bucojXrPfYJSQuYgS0fv10Q&usqp=CAU')),
    Chat("Happi", "good morning", "10:45 PM",
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsynwv-5qtogtOwJbIjaPFJUmHpzhxgqIAug&usqp=CAU')),
    Chat("Kunjal", "good afternoon", "2:00 PM",
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5M2j5aP_QleSz2Sb2Qgf-J5UgjP3po54hg&usqp=CAU')),
    Chat("Monali", "12345", "4:30 PM",
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc8hI4eDSPpMRTQats69FgG8a7PrG4KkqQwQ&usqp=CAU')),
    Chat("Kirti", "909090", "10:45 PM",
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe2mHjhf_0E2RUH8SXrVaw-FPJ6whDt7awjQ&usqp=CAU')),
    Chat("Vaishli", "Message", "10:45 PM",
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOvA2FVDC3PxgAZIzQq-620yoCPTcTxxUOPw&usqp=CAU')),
  ];

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff121b22),
        body: Center(
          child: Container( // Wrap the ListView.builder with Expanded
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                final chat = chats[index];
                return ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: chat.image,
                    ),
                  ),
                  title: Text(chat.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                  subtitle: Text(chat.message,
                      style: TextStyle(
                        color: Color(0xff7e8b93),
                        fontSize: 14,
                      )),trailing: Text(
                  chat.time,
                  style: TextStyle(
                    color: Color(0xff7e8b93),
                    fontSize: 10,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
          floatingActionButton: Container(
            margin: EdgeInsets.only(bottom: 20),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color(0xff00a984),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(Icons.chat,color: Colors.black),

          )
      ),
    );
  }
}




