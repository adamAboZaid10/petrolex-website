part of 'home_bloc.dart';

class HomeState extends Equatable {
  final int currentIndex;
  final bool changeAppBar;
  const HomeState({
    required this.currentIndex,
    required this.changeAppBar,
  });

  factory HomeState.init() {
    return const HomeState(
      currentIndex: 0,
      changeAppBar: false,
    );
  }

  HomeState copyWith({
    int? currentIndex,
    bool? changeAppBar,
  }) {
    return HomeState(
      currentIndex: currentIndex ?? this.currentIndex,
      changeAppBar: changeAppBar ?? this.changeAppBar,
    );
  }

  @override
  List<Object> get props => [
    currentIndex,
    changeAppBar,
  ];
}
