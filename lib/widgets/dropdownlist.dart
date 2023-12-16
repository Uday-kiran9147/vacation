import 'package:flutter/material.dart';

class Dropdown_Widget extends StatefulWidget {
  const Dropdown_Widget({super.key});

  @override
  State<Dropdown_Widget> createState() => _Dropdown_WidgetState();
}

class _Dropdown_WidgetState extends State<Dropdown_Widget> {
  String dropdownvalue = "";

  List<String> items = <String>["orange", "Apple", "Banana", "papaya"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text("DropdownList")),
        body: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                height: 100,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10),
                child: DropdownButton<String>(
                  isExpanded: true,
                  iconSize: 50,
                  borderRadius: BorderRadius.circular(15),
                  hint: const Text("Select fruit"),
                  value: dropdownvalue,
                  onChanged: (String? newvalue) {
                    setState(() {
                      //  " ! " is a null Saftey
                      dropdownvalue = newvalue!;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_downward_sharp,
                    color: Colors.green,
                  ),
                  items: items.map<DropdownMenuItem<String>>((String fruit) {
                    return DropdownMenuItem(
                        alignment: Alignment.center,
                        value: fruit,
                        child: Text(
                          fruit,
                          style: const TextStyle(color: Colors.green),
                        ));
                  }).toList(),
                )),
          ],
        ));
  }
}
