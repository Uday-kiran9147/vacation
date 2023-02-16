import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vacationvproject/bloc/internet_state.dart';

import 'internet_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Center(child: BlocBuilder<InterNetBloc, InterNetState>(
        builder: (context, state) {
          if (state is InterNetLossState) {
            return Text('Internet Lost');
          } else if (state is InterNetGainState) {
            return Text("internet Connected !");
          } else {
            return Text("Loading...");
          }
        },
      )),
    ));
  }
}
