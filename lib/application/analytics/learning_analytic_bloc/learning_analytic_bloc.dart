import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/domain/analytics/interfaces/i_analytic_repository.dart';

part 'learning_analytic_event.dart';
part 'learning_analytic_state.dart';
part 'learning_analytic_bloc.freezed.dart';

@injectable
class LearningAnalyticBloc
    extends Bloc<LearningAnalyticEvent, LearningAnalyticState> {
  final IAnalyticRepository iAnalyticRepository;

  LearningAnalyticBloc(this.iAnalyticRepository)
      : super(const LearningAnalyticState.initial()) {
    on<_$_GetLearningAnalytic>((event, emit) async {
      try {
        log('analytic bloc');
        emit(const LearningAnalyticState.loadInProgress());
        final data =
            await iAnalyticRepository.getLearningAnalytics(event.userId);
        log('response bloc ${data}');
        data.fold(
          (l) => emit(LearningAnalyticState.loadFailure(l.message)),
          (r) => emit(LearningAnalyticState.loadSuccess(r)),
        );
      } catch (e) {
        emit(LearningAnalyticState.loadFailure(e.toString()));
      }
    });
  }
}
