import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.init()) {
    on<CarouselSliderEvent>(changeCarousel);
  }

  void changeCarousel(CarouselSliderEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(currentIndex: event.currentIndex));
  }
}
