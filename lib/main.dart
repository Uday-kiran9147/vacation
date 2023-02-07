import 'package:flutter/material.dart';
import 'package:vacationvproject/STATE/main.dart';
import 'package:vacationvproject/widgets/Buttons.dart';
import 'package:vacationvproject/widgets/List_AND_grid.dart';
import 'package:vacationvproject/widgets/alert_widget.dart';
import 'package:vacationvproject/widgets/animated_text.dart';
import 'package:vacationvproject/widgets/bottom_sheet.dart';
import 'package:vacationvproject/widgets/dismisible.dart';
import 'package:vacationvproject/widgets/drawer.dart';
import 'package:vacationvproject/widgets/dropdownlist.dart';
import 'package:vacationvproject/widgets/firebase/crudOperations.dart';
import 'package:vacationvproject/widgets/firebase/email.dart';
import 'package:vacationvproject/widgets/form.dart';
import 'package:vacationvproject/widgets/imagepicker.dart';
import 'package:vacationvproject/widgets/snackbar.dart';
import 'package:vacationvproject/widgets/stack.dart';
import 'package:vacationvproject/widgets/tabbar.dart';

import 'calci.dart';
import 'firebase_options.dart';
import 'widgets/geolocator.dart';
import 'widgets/ui.dart';
// import 'package:firebase_core/firebase_core.dart';
//for future use.
void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApp());
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
        // debugShowCheckedModeBanner: bool.fromEnvironment('name'),
        theme:
            ThemeData(brightness: Brightness.dark, primaryColor: Colors.cyan),
        home:


        
        const ProviderHome()
        //MyApp2()
            //DataBase()
          //  EmailAuthentication()
        // RandomUI(),
        //GeoLacation_Widget()
        //  ImagePicker_Widget()
        // TabBar_Widget()
        // Stack_Widget()
        // Form_Widget()
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
