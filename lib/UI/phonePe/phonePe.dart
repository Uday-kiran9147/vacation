// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vacationvproject/UI/phonePe/components/receive_money.dart';

import 'components/apps_by_phonepe.dart';
import 'components/home_banner.dart';
import 'components/home_container.dart';
import 'components/recharge_&_pay_bills.dart';
import 'components/transfer_money_section.dart';
import 'components/wallet_rewards.dart';
import 'widgets/p_icon.dart';

class PhonePeHome extends StatefulWidget {
  @override
  State<PhonePeHome> createState() => _PhonePeHomeState();
}

Color appBarColor = Color(0XFF6739B7);

class _PhonePeHomeState extends State<PhonePeHome> {
  //  PhonePeHome({super.key});
  Color scaffoldColor = Color.fromARGB(255, 219, 203, 247);

  int currentIndex = 0;

  List<Widget> bottomList = <Widget>[
    HomeP(),
    HomeP(),
    HomeP(),
    HomeP(),
    HomeP()
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/ui2.jpeg'),
          ),
        ),
        title: Text(
          "Add Address\nGIDC",
          style: walletTextStyle.copyWith(fontSize: 15),
        ),
        
        actions: [
          Icon(Icons.qr_code_scanner_rounded,color:whiteColor,size: iconThemeData.size,),
          Icon(Icons.notifications_outlined,color: whiteColor,size: iconThemeData.size,),
          Icon(Icons.question_mark_outlined,color: whiteColor,size: iconThemeData.size,),
        ],
      ),
      body: bottomList.elementAt(currentIndex),
      bottomNavigationBar: SizedBox(
        height: size.height * 0.09,
        child: BottomNavigationBar(
            backgroundColor: appBarColor,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            selectedIconTheme: IconThemeData(
              color: appBarColor,
            ),
            selectedItemColor: appBarColor,
            unselectedIconTheme: IconThemeData(color: Colors.grey),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,color: iconThemeData.color,size: iconThemeData.size,), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person,color: iconThemeData.color,size: iconThemeData.size,), label: 'Credit'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.private_connectivity,color: iconThemeData.color,size: iconThemeData.size,), label: 'Insurance'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_circle_up,color: iconThemeData.color,size: iconThemeData.size,), label: 'Wealth'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history,color: iconThemeData.color,size: iconThemeData.size,), label: 'History'),
            ]),
      ),
    );
  }
}

BorderRadiusGeometry borderRadius = BorderRadius.all(Radius.circular(12));
TextStyle walletTextStyle = TextStyle(fontSize: 12, color: Colors.white);
IconThemeData iconThemeData = IconThemeData(size: 30);
Color whiteColor = Colors.white;
class HomeP extends StatelessWidget {
  const HomeP({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Flex(
            direction: Axis.vertical,
            children: [
              HomeBanner(size: size),

              TransferMoney(size: size),

              ReceiveMoney(),
              // SizedBox(
              //   height: 10,
              // ),
              Wallet_Reward_Refer(size: size),
              // SizedBox(
              //   height: 10,
              // ),
              AppsByPhonePe(size: size),
              // SizedBox(
              //   height: 10,
              // ),
              RechargeAndPayBills(size: size)
            ],
          ),
        ),
      ),
    );
  }
}
