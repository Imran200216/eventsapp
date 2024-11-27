import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_events_favorties_event.dart';
part 'add_events_favorties_state.dart';

class AddEventsFavortiesBloc extends Bloc<AddEventsFavortiesEvent, AddEventsFavortiesState> {
  AddEventsFavortiesBloc() : super(AddEventsFavortiesInitial()) {
    on<AddEventsFavortiesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
