import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'bottom_nav_event.dart';

part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavState(currentIndex: 0)) {
    on<BottomNavIndexChanged>((event, emit) {
      emit(BottomNavState(currentIndex: event.newIndex));
    });
  }

  void navigateToIndex(BuildContext context, int index) {
    add(BottomNavIndexChanged(index));
    Navigator.of(context).popUntil((route) => route.isFirst);
  }
}
