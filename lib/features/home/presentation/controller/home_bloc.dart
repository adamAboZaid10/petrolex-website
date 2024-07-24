import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.init()) {
    on<CarouselSliderEvent>(changeCarousel);

    on<ChangeAppBarEvent>(changeAppBar);
  }

  void changeCarousel(CarouselSliderEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(currentIndex: event.currentIndex));
  }

  bool change = false;

  void changeAppBar(ChangeAppBarEvent event, Emitter<HomeState> emit) {
    change = !change;
    emit(state.copyWith(changeAppBar: change));
  }
}
