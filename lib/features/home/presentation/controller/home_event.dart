part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();
}

class CarouselSliderEvent extends HomeEvent {
  final int currentIndex;
  const CarouselSliderEvent(this.currentIndex);
  @override
  List<Object> get props => [];
}