import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progqou/Bloc/State/app_state.dart';
import 'package:progqou/Bloc/events/app_events.dart';
import 'package:progqou/Services/API/http.dart';

class QouteBloc extends Bloc<QouteEvent, QouteState> {
  final QouteR _qouteR;

  QouteBloc(this._qouteR) : super(QouteLoadingState()) {
    on<QouteEvent>((event, emit) async {
      emit(QouteLoadingState());
    });
  }
}
