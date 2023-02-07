import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Drawer_widget extends StatelessWidget {
  const Drawer_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: CachedNetworkImage(
              // imageUrl: "http://via.placeholder.com/200x150",
              imageUrl: "https://play-lh.googleusercontent.com/7Ac5TgaL15Ra4bvFVHJKCdJp4qvnL4djZj5bKc6RN-MZjzrvkeHbJytek0NPTSdZcp8",
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
                ),
              ),
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(blurRadius: 10, blurStyle: BlurStyle.solid)
                  ],
                  color: Colors.purple,
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                          'https://play-lh.googleusercontent.com/7Ac5TgaL15Ra4bvFVHJKCdJp4qvnL4djZj5bKc6RN-MZjzrvkeHbJytek0NPTSdZcp8'))),
              height: 200,
              width: 150,
            ),
          ),
        ],
      ),

      //============================================================================
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                            radius: 100 - 50,
                          ),
                        ),
                      ]),
                  color: Color.fromARGB(255, 19, 95, 22),
                  // padding: EdgeInsets.zero,
                )
                //   CircleAvatar()
                ),
            Card(
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.folder),
                tileColor: Colors.orange,
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.folder),
                tileColor: Colors.orange,
              ),
            )
          ],
        ),
      ),
    );
  }
}
