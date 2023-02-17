import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vacationvproject/bloc/internet_event.dart';
import 'package:vacationvproject/bloc/internet_state.dart';
import 'package:connectivity/connectivity.dart';

class InterNetBloc extends Bloc<InterNetEvent, InterNetState> {
  Connectivity _connectivity = Connectivity();
  StreamSubscription? _streamSubscription;

  InterNetBloc() : super(InterNetInitialState()) {
   
    on<InterNetLostEvent>((event, emit) => InterNetLossState());
    on<InterNetGainedEvent>((event, emit) => InterNetGainState());

    _streamSubscription = _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
        add(InterNetGainedEvent());
      } else {
        add(InterNetLostEvent());
      }
    });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
