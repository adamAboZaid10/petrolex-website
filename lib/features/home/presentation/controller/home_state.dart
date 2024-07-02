part of 'home_bloc.dart';

 class HomeState extends Equatable {
   final int currentIndex;

  const HomeState(this.currentIndex);

  factory HomeState.init() {
    return const HomeState(0);
  }


  HomeState copyWith({
    int? currentIndex,
  }) {
    return HomeState(
      currentIndex ?? this.currentIndex,
    );
  }

  @override
  List<Object> get props => [currentIndex];
}

