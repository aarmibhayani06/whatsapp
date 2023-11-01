import 'package:flutter/material.dart';

class Chatbutton {
  final String name;
  final String message;
  final String time;
  NetworkImage image = NetworkImage('');

  Chatbutton(this.name, this.message, this.time, this.image);
}
class Chatsbuton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChatsbutonState();
  }
}
class ChatsbutonState extends State<Chatsbuton>
{
  @override

  final List<Chatbutton> chats = [
    Chatbutton("Malu", "Hello!", "9:00 AM",
        NetworkImage('https://wallpapers.com/images/featured/cute-profile-picture-s52z1uggme5sj92d.jpg')),
    Chatbutton("Sejal", "Hi there!", "10:30 AM",
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR47eGNB4uktvhbGIeWWDPNl-0L1EBWByWRkg&usqp=CAU')),
    Chatbutton("Rutva", "Hey!", "11:45 AM",
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVNTQ-qv1yThezkWcB9KdTmq4H3kjorujzOw&usqp=CAU')),
    Chatbutton("Tvisha", "Hello!", "2:00 PM",
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFacn0pb12vsSRTPKRUDnxFrP8sj7st13r8A&usqp=CAU')),
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
      ),
    );
  }
}




