part of 'hotel_data_bloc.dart';

@immutable
abstract class HotelDataEvent {}

class HotelDataSetRoomEvent extends HotelDataEvent {
  final String room;
  final int roomCost;

  HotelDataSetRoomEvent(
    this.room,
    this.roomCost,
  );
}
