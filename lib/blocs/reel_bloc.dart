import 'package:flutter_bloc/flutter_bloc.dart';

class ReelEvent {
  final String reelUrl;
  final bool isNews;
  ReelEvent(this.reelUrl, {this.isNews = false});
}

class ReelState {
  final List<Map<String, dynamic>> reels;
  ReelState(this.reels);
}

class ReelBloc extends Bloc<ReelEvent, ReelState> {
  ReelBloc() : super(ReelState([])) {
    on<ReelEvent>((event, emit) {
      final updated = List<Map<String, dynamic>>.from(state.reels);
      updated.add({
        'url': event.reelUrl,
        'isNews': event.isNews,
      });
      emit(ReelState(updated));
    });
  }
}
// Reel BLoC
