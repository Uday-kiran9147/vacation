import 'package:flutter/material.dart';
import 'package:vacationvproject/BloCs/start.dart';
import 'package:vacationvproject/Streams/streams.dart';
import 'package:vacationvproject/UI/wallet.dart';
import 'package:vacationvproject/widgets/Buttons.dart';
import 'package:vacationvproject/widgets/List_AND_grid.dart';
import 'package:vacationvproject/widgets/alert_widget.dart';
import 'package:vacationvproject/widgets/animated_text.dart';
import 'package:vacationvproject/widgets/bottom_sheet.dart';
import 'package:vacationvproject/widgets/container_sizedbox.dart';
import 'package:vacationvproject/widgets/dismisible.dart';
import 'package:vacationvproject/widgets/drawer.dart';
import 'package:vacationvproject/widgets/dropdownlist.dart';
import 'package:vacationvproject/widgets/firebase/crudOperations.dart';
import 'package:vacationvproject/widgets/form.dart';
import 'package:vacationvproject/widgets/imagepicker.dart';
import 'package:vacationvproject/widgets/rowsCols.dart';
import 'package:vacationvproject/widgets/snackbar.dart';
import 'package:vacationvproject/widgets/ui.dart';
import 'package:vacationvproject/workingAPI/apiscreen.dart';

import 'STATE/state-main.dart';
import 'UI/gymstore.dart';
import 'UI/phonePe/phonePe.dart';
import 'widgets/firebase/email.dart';
import 'widgets/geolocator.dart';
import 'widgets/stack.dart';
import 'widgets/tabbar.dart';

void main() async {
  runApp( MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme:
      //     ThemeData(brightness: Brightness.light, primaryColor: Colors.cyan),
    theme: ThemeData(iconTheme: IconThemeData(color: Colors.white)),
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Navigation Example'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavigationButton(context, 'GymStore', const GymStore()),
              _buildNavigationButton(context, 'ProviderHome', const ProviderHome()),
              _buildNavigationButton(context, 'DataBase', const DataBase()),
              _buildNavigationButton(context, 'EmailAuthentication', const EmailAuthentication()),
              _buildNavigationButton(context, 'RandomUI', const RandomUI()),
              _buildNavigationButton(context, 'GeoLacation_Widget', const GeoLacation_Widget()),
              _buildNavigationButton(context, 'ImagePicker_Widget', const ImagePicker_Widget()),
              _buildNavigationButton(context, 'TabBar_Widget', const TabBar_Widget()),
              _buildNavigationButton(context, 'Stack_Widget', const Stack_Widget()),
              _buildNavigationButton(context, 'Form_Widget', Form_Widget()),
              // _buildNavigationButton(context, '     Dropdown_Widget', const Dropdown_Widget()),
              _buildNavigationButton(context, 'AnimatedText_Widget', const AnimatedText_Widget()),
              _buildNavigationButton(context, 'BottomSheet_Widget', const BottomSheet_Widget()),
              _buildNavigationButton(context, 'AlerDialog_Widget', const AlerDialog_Widget()),
              _buildNavigationButton(context, 'Drawer_widget', const Drawer_widget()),
              _buildNavigationButton(context, 'Dismissible_Widget', const Dismissible_Widget()),
              _buildNavigationButton(context, 'SnackBar_widget', SnackBar_widget()),
              _buildNavigationButton(context, 'List_Grid', const List_Grid()),
              _buildNavigationButton(context, 'Buttons', const Buttons()),
              _buildNavigationButton(context, 'RowsCOls', const RowsCOls()),
              _buildNavigationButton(context, 'Container_sizedBox', const Container_sizedBox()),
              _buildNavigationButton(context, 'Working_API', const API_Screen()),
              _buildNavigationButton(context, 'Streams', const StreamsExample()),
              _buildNavigationButton(context, 'Wallet ui', const WalletUI()),
              _buildNavigationButton(context, 'BloC', const BloCHome()),
              _buildNavigationButton(context, 'PhonePe',  PhonePeHome()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationButton(BuildContext context, String screenName, Widget screenWidget) {
    return InkWell(
      child: Text(screenName),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => screenWidget,
        ),
      ),
    );
  }
}
