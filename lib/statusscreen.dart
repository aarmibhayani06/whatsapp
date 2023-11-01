import 'package:flutter/material.dart';
import 'dart:io';
class Status {
  final String name;
  final String imageUrl;
  final String timeAgo;

  Status({
    required this.name,
    required this.imageUrl,
    required this.timeAgo,
  });
}

class Statuss extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StatussState();
  }
}
class StatussState extends State<Statuss>
{
  @override

  List<Status> statusData = [
    Status(
      name: 'John Doe',
      imageUrl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5M2j5aP_QleSz2Sb2Qgf-J5UgjP3po54hg&usqp=CAU", // Replace with image URLs
      timeAgo: '2 hours ago',
    ),
    Status(
           name: 'Rutva',
           imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxK8jqUz6OCl3bucojXrPfYJSQuYgS0fv10Q&usqp=CAU',
           timeAgo: '10:06Am'),
    Status(
        name: 'manali',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOvA2FVDC3PxgAZIzQq-620yoCPTcTxxUOPw&usqp=CAU',
        timeAgo: '05:06Am')
  ];



  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff121b22),
       body: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
             child: Container(
               height: 30,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Status',
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.w800,
                     color: Colors.white
                   ),),
                   Icon(Icons.more_vert,
                   color: Colors.white,)
                 ],
               ),

             ),
           ),
           Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 60,
                    child:Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc8hI4eDSPpMRTQats69FgG8a7PrG4KkqQwQ&usqp=CAU'), // Use the correct image URL here
                          ),
                        ),
                        SizedBox(width: 20),
                        RichText(text: TextSpan(
                             text: 'My Status\n',
                                  style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15,
                          ),children: [
                            TextSpan(
                              text: '2 min ago',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                               )
                             )
                          ]
                         )
                        )
                      ],
                    ),
                  ),
                ),
           Container(
             height: 20,
             child: Text(
               'Recent updates',
               style: TextStyle(
                   color: Colors.grey,
                   fontSize: 12
               ),
             ),
           ),
           Container(
             height: 500,
             child: ListView.builder(
               itemCount: statusData.length,
               itemBuilder: (context, index) {
                 final status = statusData[index];
                 return ListTile(
                     leading: Container(
                       width: 50, // Set the width and height of the container to control the size of the avatar.
                       height: 50,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         border: Border.all(
                           color: Colors.green,// Set the border color you want.
                           width: 3.0,          // Set the border width you want.
                         ),
                       ),
                       child: CircleAvatar(
                         backgroundImage: NetworkImage(status.imageUrl), // Add your image URL.
                       ),
                     ),
                     title: Text(status.name,
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 15,
                         )),
                     subtitle: Text(status.timeAgo,
                       style: TextStyle(
                         color: Color(0xff7e8b93),
                         fontSize: 14,),
                     )
                 );
               },
             ),
           ),
         ],
        ),
        floatingActionButton: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 530),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(Icons.mode_edit_outline_outlined,color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color(0xff00a984),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Icon(Icons.camera_alt,color: Colors.black),
              )
            ],
          ),
        ),
       )
    );
  }
}






















