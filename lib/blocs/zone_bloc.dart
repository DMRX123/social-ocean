import 'package:flutter_bloc/flutter_bloc.dart';

enum ZoneType { Education, Entertainment, Mixed }

class ZoneEvent {
  final ZoneType selectedZone;
  ZoneEvent(this.selectedZone);
}

class ZoneState {
  final ZoneType currentZone;
  ZoneState(this.currentZone);
}

class ZoneBloc extends Bloc<ZoneEvent, ZoneState> {
  ZoneBloc() : super(ZoneState(ZoneType.Mixed)) {
    on<ZoneEvent>((event, emit) {
      emit(ZoneState(event.selectedZone));
    });
  }
}
// Zone BLoC
