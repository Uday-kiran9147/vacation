import 'package:flutter/material.dart';

class RandomUI extends StatelessWidget {
  const RandomUI({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 380 - 30,
                    // color: Colors.amber,
                  ),
                  Container(
                    height: h / 2 - 30,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        image: DecorationImage(
                          image: AssetImage('assets/ui.jpeg'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                      bottom: 10,
                      right: 25,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/ui.jpeg',
                        ),
                        radius: 40,
                      )),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "DataBase is the collection of interrelated data and set of programs to access data",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                // padding: EdgeInsets.all(0),
                child: Text(
                  "DataBase is the collection of interrelated data and set of  ",
                  style: TextStyle(
                    fontSize: 27 / 2,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Rowwidget("20", Icons.favorite_border),
                      Rowwidget("20", Icons.upload_file),
                      Rowwidget("20", Icons.chat_rounded),
                      Rowwidget("20", Icons.follow_the_signs),
                    ]),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Now is the winter of our discontent Made glorious summer by this sun of York; And all the clouds that lour'd upon our house In the deep bosom of the ocean buried. Now are our brows bound with victorious wreaths; Our bruised arms hung up for monuments; Our stern alarums changed to merry meetings,",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Rowwidget(String text, IconData icon) {
    return Container(
      child: Row(children: [Text(text), Icon(icon)]),
    );
  }
}
