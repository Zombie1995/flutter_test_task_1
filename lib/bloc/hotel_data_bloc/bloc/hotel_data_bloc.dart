import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'hotel_data_event.dart';
part 'hotel_data_state.dart';

class HotelDataBloc extends Bloc<HotelDataEvent, HotelDataState> {
  HotelDataBloc() : super(const HotelDataState()) {
    on<HotelDataSetRoomEvent>((event, emit) {
      emit(state.copyWith(
        room: event.room,
        roomCost: event.roomCost,
      ));
    });
  }
}
