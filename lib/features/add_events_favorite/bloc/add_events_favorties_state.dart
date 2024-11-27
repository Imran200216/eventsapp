part of 'add_events_favorties_bloc.dart';

sealed class AddEventsFavortiesState extends Equatable {
  const AddEventsFavortiesState();
}

final class AddEventsFavortiesInitial extends AddEventsFavortiesState {
  @override
  List<Object> get props => [];
}
