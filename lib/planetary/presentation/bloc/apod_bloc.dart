import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_nasa_insights/core/resource.dart';
import 'package:my_nasa_insights/planetary/data/repository/apod_repository.dart';
import 'package:my_nasa_insights/planetary/domain/apod.dart';
import 'package:my_nasa_insights/planetary/presentation/bloc/apod_event.dart';
import 'package:my_nasa_insights/planetary/presentation/bloc/apod_state.dart';

class ApodBloc extends Bloc<ApodEvent, ApodState> {
  ApodBloc(super.initialState) {
    on<GetApodsEvent>((event, emit) async {
      final currentState = state;
      List<Apod> apods = [];

      if (currentState is ApodLoaded) {
        apods = currentState.Apods;
      }

      emit(ApodLoading());

      final Resource<List<Apod>> result =
          await ApodRepository().getApod(event.start_date, event.end_date);

      if (result is Success) {
        apods.addAll(result.data!);
        emit(ApodLoaded(Apods: apods, hasReachedEnd: false));
      } else {
        emit(ApodError(message: result.message!));
      }
    });
  }
}
