import 'package:flutter/material.dart';


class Communitys extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CommunitysState();
  }
}
class CommunitysState extends State<Communitys>
{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff121b22),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 60,
                child:Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        child: Icon(Icons.groups,color: Colors.white,size: 30,),
                      ),
                        Container(
                          height: 23,
                          width: 23,
                          decoration: BoxDecoration(
                              color: Color(0xff121b22),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          margin: EdgeInsets.only(left: 30,top: 30),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          margin: EdgeInsets.only(left: 33,top: 33),
                          child: (Icon(Icons.add,color: Colors.white,size: 20,)),
                        ),
                     ],
                    ),
                    SizedBox(width: 20),
                    Text('New Community',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),)
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                 height: 60,
                    child:Row(
                      children: [
                         Container(
                             height: 50,
                             width: 50,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Colors.grey,
                                ),
                             child: Icon(Icons.groups,color: Colors.white,size: 30,),
                           ),
                        SizedBox(width: 20),
                        Text('Narola Trendz',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),)
                        ],
                     ),
                  ),
                ),
            Container(
              height: 0.2,
              color: Colors.grey.shade50,
            ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                          height: 60,
                          child:Row(
                               children: [
                                 Container(
                                   height: 50,
                                   width: 50,
                                   decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   color: Colors.teal,
                                    ),
                                child: Icon(Icons.volume_up,color: Colors.tealAccent,size: 30,),
                                ),
                                 SizedBox(width: 20,),

                                 RichText(text: TextSpan(text: 'Announcements\n',
                                   style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 18
                                   ),
                                     children: [
                                     TextSpan(
                                       text: 'Group "M" was added',
                                       style: TextStyle(
                                           color: Colors.grey,
                                           fontSize: 16
                                       ),
                                     ),
                                     ]
                                 ),
                                 ),
                               ],
                            )
                          ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 15),
                        child: Container(
                          height: 60,
                          child:Row(
                            children: [
                              Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 17,),
                              SizedBox(width: 40),
                              Text('View all',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17
                                ),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                )
                 ]
              )
          )
       );
    }
}






















