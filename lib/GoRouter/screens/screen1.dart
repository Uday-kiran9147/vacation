import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vacationvproject/GoRouter/go_router_home.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  static Screen1 builder(BuildContext context, GoRouterState state) =>
      Screen1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: Center(
        child: ActionChip(
            label: Text('Go to screen2'),
            onPressed: () {
              context.push(RouteNames.screen2);
            }),
      ),
    );
  }
}
