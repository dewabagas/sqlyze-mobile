import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'greetings_event.dart';
part 'greetings_state.dart';
part 'greetings_bloc.freezed.dart';

@injectable
class GreetingsBloc extends Bloc<GreetingsEvent, GreetingsState> {
  GreetingsBloc() : super(const GreetingsState.initial()) {
    on<_ShowGreetings>((event, emit) async {
      log('greetings bloc');
      emit(const GreetingsState.loadInProgress());
      DateTime time = DateTime.now();
      String greeting = 'Siang';
      if (time.hour >= 5 && time.hour <= 11) greeting = 'Pagi';
      if (time.hour > 11 && time.hour <= 15) greeting = 'Sore';
      try {
        emit(GreetingsState.loadSuccess(greeting));
      } catch (e) {
        emit(GreetingsState.loadFailure(greeting));
      }
    });
  }
}
