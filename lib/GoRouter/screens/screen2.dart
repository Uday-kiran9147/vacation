import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  static Screen2 builder(BuildContext context, GoRouterState state) => Screen2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ActionChip(
          label: Text('back'),
          onPressed: () => context.pop(),
        ),
      ),
    );
  }
}
