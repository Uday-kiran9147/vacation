import 'package:flutter/material.dart';

class TabBar_Widget extends StatelessWidget {
  const TabBar_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //initial index is the start of the {App will start from index 1}.
      initialIndex: 1,

      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("Tab Bar "),
          bottom: TabBar(
            // isScrollable: true,
            //height of indicator
            indicatorWeight: 5,
            indicatorColor: Colors.pink,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt_outlined),
                text: 'Camera',
              ),
              Tab(
                icon: Icon(Icons.chat_rounded),
                text: 'CHARTS',
              ),
              Tab(
                icon: Icon(Icons.circle_notifications_outlined),
                text: 'Status',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'Call',
              ),
              //     ---------------------TO SHOW TAB BAR SCROLLABLE FUNCATIONALITY (uncomment and try by changing length property in DefaultTabController)--------------------
              //-----------------------------------------------------------------------------------------------------------------------
              //     Tab(
              //   icon: Icon(Icons.camera_alt_outlined),
              //   text: 'Camera',
              // ),    Tab(
              //   icon: Icon(Icons.camera_alt_outlined),
              //   text: 'Camera',
              // ),    Tab(
              //   icon: Icon(Icons.camera_alt_outlined),
              //   text: 'Camera',
              // ),    Tab(
              //   icon: Icon(Icons.camera_alt_outlined),
              //   text: 'Camera',
              // ),    Tab(
              //   icon: Icon(Icons.camera_alt_outlined),
              //   text: 'Camera',
              // ),    Tab(
              //   icon: Icon(Icons.camera_alt_outlined),
              //   text: 'Camera',
              // ),    Tab(
              //   icon: Icon(Icons.camera_alt_outlined),
              //   text: 'Camera',
              // )
              // ,
              //-----------------------------------------------------------------------------------------------------------------------
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(
              child: Text(
                "Camera",
                style: TextStyle(fontSize: 40, color: Colors.green),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "CHARTS",
                style: TextStyle(fontSize: 40, color: Colors.green),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "STATUS",
                style: TextStyle(fontSize: 40, color: Colors.green),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "CALLS",
                style: TextStyle(fontSize: 40, color: Colors.green),
              ),
            ),
          ),

//     ---------------------TO SHOW TAB BAR SCROLLABLE FUNCATIONALITY-------------------------------------
//-----------------------------------------------------------------------------------------------------------------------
          //    Container(
          //   child: Center(
          //     child: Text(
          //       "Camera",
          //       style: TextStyle(fontSize: 40,color: Colors.green),
          //     ),
          //   ),
          // ), Container(
          //   child: Center(
          //     child: Text(
          //       "Camera",
          //       style: TextStyle(fontSize: 40,color: Colors.green),
          //     ),
          //   ),
          // ), Container(
          //   child: Center(
          //     child: Text(
          //       "Camera",
          //       style: TextStyle(fontSize: 40,color: Colors.green),
          //     ),
          //   ),
          // ), Container(
          //   child: Center(
          //     child: Text(
          //       "Camera",
          //       style: TextStyle(fontSize: 40,color: Colors.green),
          //     ),
          //   ),
          // ), Container(
          //   child: Center(
          //     child: Text(
          //       "Camera",
          //       style: TextStyle(fontSize: 40,color: Colors.green),
          //     ),
          //   ),
          // ), Container(
          //   child: Center(
          //     child: Text(
          //       "Camera",
          //       style: TextStyle(fontSize: 40,color: Colors.green),
          //     ),
          //   ),
          // ), Container(
          //   child: Center(
          //     child: Text(
          //       "Camera",
          //       style: TextStyle(fontSize: 40,color: Colors.green),
          //     ),
          //   ),
          // ),
          //-------------------------------------------------------------------------------------------------
        ]),
        floatingActionButton: FloatingActionButton(onPressed: (){}),
      ),
    );
  }
}
