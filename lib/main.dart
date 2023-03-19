import 'package:flutter/material.dart';
import 'package:vacationvproject/workingAPI/apiscreen.dart';
import 'package:vacationvproject/widgets/form.dart';
void main() async {

  runApp(API_Screen());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
            ThemeData(brightness: Brightness.dark, primaryColor: Colors.cyan),
        home: 
        // const ProviderHome()
        //MyApp2()
        //DataBase()
        //  EmailAuthentication()
        // RandomUI(),
        //GeoLacation_Widget()
        //  ImagePicker_Widget()
        // TabBar_Widget()
        // Stack_Widget()
        Form_Widget()
        // Dropdown_Widget()
        // AnimatedText_Widget()
        //BottomSheet_Widget()
        //AlerDialog_Widget()
        // Drawer_widget()
        // Dismissible_Widget()
        // SnackBar_widget()
        // List_Grid()
        //Buttons()
        //RowsCOls()
        //Container_sizedBox(),
        );
  }
}
