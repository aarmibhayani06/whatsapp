import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121b22),
      body: Column(
          children: [
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
                        color: Colors.teal,
                      ),
                     child: Icon(Icons.link,color: Colors.black,),
                    ),
                    SizedBox(width: 20),
                    RichText(text: TextSpan(
                        text: 'Create call link\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),children: [
                      TextSpan(
                          text: 'Share a link for your Whatsapp call',
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
                itemCount: callHistoryData.length,
                itemBuilder: (context, index) {
                  final call = callHistoryData[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(call.callerImage),
                    ),
                    title: Text(call.callerName,style: TextStyle(color: Colors.white),),
                    subtitle: Text(call.callDuration,
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: (Icon(Icons.call,color: Colors.teal,)),
                  );
                },
              ),
            ),
        ]
    ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(bottom: 18),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Color(0xff00a984),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Icon(Icons.add_call,color: Colors.black,),

        )
    );
  }
}

class CallRecord {
  final String callerName;
  final String callerImage;
  final String callDuration;
  final String callDateTime;

  CallRecord({
    required this.callerName,
    required this.callerImage,
    required this.callDuration,
    required this.callDateTime,
 }
      );
 }

List<CallRecord> callHistoryData = [
  CallRecord(
    callerName: 'John Doe',
    callerImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOvA2FVDC3PxgAZIzQq-620yoCPTcTxxUOPw&usqp=CAU',
    callDuration:'5:23 Am',
    callDateTime:'2 hours ago',
  ),
  CallRecord(
    callerName: 'xyz',
    callerImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOvA2FVDC3PxgAZIzQq-620yoCPTcTxxUOPw&usqp=CAU',
    callDuration:'7:02 Am',
    callDateTime:'2 hours ago',
  ),
  CallRecord(
    callerName: 'abc',
    callerImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOvA2FVDC3PxgAZIzQq-620yoCPTcTxxUOPw&usqp=CAU',
    callDuration:'6:20 pm',
    callDateTime:'2 hours ago',
  ),
  CallRecord(
    callerName: ' Doe',
    callerImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOvA2FVDC3PxgAZIzQq-620yoCPTcTxxUOPw&usqp=CAU',
    callDuration:'9:10 pm',
    callDateTime:'2 hours ago',
  ),

  // Add more call history records here...
];
