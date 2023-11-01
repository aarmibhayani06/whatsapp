import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled1/chatsscreen.dart';
import 'package:untitled1/statusscreen.dart';

import 'callscreen.dart';
import 'communityscreen.dart';

void main() {
  runApp(MyApp());
}


class Call {
  final String name;
  final String time;
  final bool isVideoCall;

  Call(this.name, this.time, this.isVideoCall);
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {

  late TabController controller;

  @override

  void initState() {
    controller = TabController(length: 4, vsync: this, initialIndex: 0); // Change length to 3
    super.initState();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff121b22),
        appBar: AppBar(
          backgroundColor: Color(0xff1f2c34),
          title: Text(
            'WhatsApp',
            style: TextStyle(
              color: Color(0xff7e8b93),
              fontSize: 20,
            ),
          ),
          elevation: 0,
          actions: [
            IconButton(onPressed: (){
              getLostData();
            }, icon: Icon(Icons.camera_alt_outlined, color: Color(0xff7e8b93)),),
            SizedBox(width: 15),
            Icon(Icons.search_rounded,color:Color(0xff7e8b93) ,),
            SizedBox(width: 15),
            PopupMenuButton<String>(
              onSelected: (value) {
                // Handle the selected option
                if (value == 'option1') {
                  // Do something for option 1
                } else if (value == 'option2') {
                  // Do something for option 2
                } else if (value == 'option3') {
                  // Do something for option 3
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'New Group',
                    child: Text('New Group'),
                  ),
                  PopupMenuItem<String>(
                    value: 'option2',
                    child: Text('New broadcast'),
                  ),
                  PopupMenuItem<String>(
                    value: 'option3',
                    child: Text('Linked devices'),
                  ),
                  PopupMenuItem<String>(
                    value: 'option1',
                    child: Text('Starred message'),
                  ),
                  PopupMenuItem<String>(
                    value: 'option2',
                    child: Text('Payments'),
                  ),
                  PopupMenuItem<String>(
                    value: 'option3',
                    child: Text('Settings'),
                  ),
                ];
              },
            ),
          ],
        ),
        // ...
        body: SingleChildScrollView(
          child:
          Column(
            children: [
              Container(
                height: 50,
                width: 400,
                color: Color(0xff1f2c34),
                child: DefaultTabController(initialIndex: 2,
                    length: 4,
                    child: TabBar(
                      controller: controller,
                      indicatorPadding: EdgeInsets.zero,
                      labelPadding: EdgeInsets.zero,
                      isScrollable: true,
                      tabs: [
                        Container(
                            width: 50,// Set the desired width here
                            child: Tab(
                                child: Icon(Icons.group, color: Color(0xff7e8b93), size: 25)
                            )
                        ),
                        Container(
                            width: 110,
                            child: Tab(child: Text("Chats"))),
                        Container(
                            width: 110,
                            child: Tab(child: Text("Updates"))),
                        Container(
                            width: 100,
                            child: Tab(child: Text("Calls"))),
                      ],
                    )
                ),
              ),
              Container(
                height: 663,
                child: TabBarView(controller: controller, children: [
                  Communitys(),
                  Chats(),
                  Statuss(),
                  Calls()
                ]),
              ),
        ]
          ),
        ),
      ),
    );
  }

  Future<void> getLostData() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    final XFile? galleryVideo =
    await picker.pickVideo(source: ImageSource.gallery);

    final XFile? cameraVideo = await picker.pickVideo(
        source: ImageSource.camera);

    final List<XFile> images = await picker.pickMultiImage();

    final XFile? media = await picker.pickMedia();

    final List<XFile> medias = await picker.pickMultipleMedia();
  }
}
