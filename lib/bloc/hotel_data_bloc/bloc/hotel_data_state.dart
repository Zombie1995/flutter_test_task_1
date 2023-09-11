part of 'hotel_data_bloc.dart';

class HotelDataState extends Equatable {
  final String room;
  final int roomCost;

  const HotelDataState({
    String? room,
    int? roomCost,
  })  : room = room ?? '',
        roomCost = roomCost ?? 0;

  HotelDataState copyWith({
    String? room,
    int? roomCost,
  }) {
    return HotelDataState(
      room: room ?? this.room,
      roomCost: roomCost ?? this.roomCost,
    );
  }

  @override
  List<Object?> get props => [room, roomCost];
}
