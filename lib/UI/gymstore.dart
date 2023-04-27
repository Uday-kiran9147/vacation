// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fancy_containers/fancy_containers.dart';
import 'package:flutter/material.dart';

class GymStore extends StatelessWidget {
  const GymStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink, brightness: Brightness.light),
      home: Scaffold(
          backgroundColor: Colors.pink,
          appBar: AppBar(
            backgroundColor: Colors.pink,
            actions: [
              IconButton(
                icon: Icon(Icons.ring_volume),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              )
            ],
            title: Text('Gym Store'),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Store',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                DecoratedContainer(
                    text: "Meal Plan",
                    URL:
                        "https://images.unsplash.com/photo-1534438327276-14e5300c3a48?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z3ltc3xlbnwwfHwwfHw%3D&w=1000&q=80"),
                Divider(),
                DecoratedContainer(
                    URL:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDHa12YeyuIAitbEsifsFqF_E3XkKDMmTacg&usqp=CAU",
                    text: "Training Plan"),
                Divider(),
                DecoratedContainer(
                    URL:
                        'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/News/gym-membership/4489-gym_people_exercise-1296x728-header.jpg?w=1155&h=1528',
                    text: 'Supplement Plan'),
                Divider(),
                DecoratedContainer(text: 'Heavy lifting', URL: null),
                Divider(),
                DecoratedContainer(text: 'Regular Fit', URL: null),
              ],
            ),
          ),
          bottomNavigationBar:
              BottomNavigationBar(enableFeedback: true, items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.feed),
                label: 'feed',
                backgroundColor: Colors.pink),
            BottomNavigationBarItem(
                icon: Icon(Icons.graphic_eq),
                label: 'progress',
                backgroundColor: Colors.pink),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'menu',
                backgroundColor: Colors.pink),
            BottomNavigationBarItem(
                icon: Icon(Icons.vaccines),
                label: 'v',
                backgroundColor: Colors.pink),
          ])),
    );
  }
}

class DecoratedContainer extends StatelessWidget {
  DecoratedContainer({
    Key? key,
    this.URL,
    required this.text,
  }) : super(key: key);

  final String? URL;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.white, blurRadius: 12)],
          color: Colors.cyan,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 160,
      width: MediaQuery.of(context).size.width * 0.90,
      child: Stack(
        children: [
          Container(
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: URL == null
                    ? Image.asset(
                        'assets/ui.jpeg',
                        fit: BoxFit.cover,
                      )
                    : Image.network(
                        URL!,
                        fit: BoxFit.cover,
                      )),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.purple,
                  Colors.red,
                ]),
                boxShadow: [BoxShadow(color: Colors.white)],
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            width: double.infinity,
          ),
          Positioned(
              bottom: 30,
              left: 20,
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
