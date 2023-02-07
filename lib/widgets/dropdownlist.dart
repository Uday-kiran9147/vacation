import 'package:flutter/material.dart';

class Dropdown_Widget extends StatefulWidget {
  const Dropdown_Widget({super.key});

  @override
  State<Dropdown_Widget> createState() => _Dropdown_WidgetState();
}

class _Dropdown_WidgetState extends State<Dropdown_Widget> {
  String dropdownvalue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text("DropdownList")),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                height: 100,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                child: DropdownButton<String>(
                  isExpanded: true,
                  iconSize: 50, borderRadius: BorderRadius.circular(15),
                  hint: Text("Select fruit"),
                  value: dropdownvalue,

                  onChanged: (String? newvalue) {
                    setState(() {
                      //  " ! " is a null Saftey
                      dropdownvalue = newvalue!;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_downward_sharp,
                    color: Colors.green,
                  ),
                  items: <String>["orange", "Apple", "Banana", "papaya"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        alignment: Alignment.center,
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.green),
                        ));
                  }).toList(),
                )),
          ],
        ));
  }
}
