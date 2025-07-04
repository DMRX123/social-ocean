import 'package:flutter_bloc/flutter_bloc.dart';

class ChatEvent {
  final String message;
  final bool isImportant;
  ChatEvent(this.message, {this.isImportant = false});
}

class ChatState {
  final List<Map<String, dynamic>> messages;
  ChatState(this.messages);
}

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatState([])) {
    on<ChatEvent>((event, emit) {
      final updatedMessages = List<Map<String, dynamic>>.from(state.messages);
      updatedMessages.add({
        'text': event.message,
        'isImportant': event.isImportant,
      });

      // Sort: Important messages first
      updatedMessages.sort((a, b) => (b['isImportant'] ? 1 : 0) - (a['isImportant'] ? 1 : 0));
      emit(ChatState(updatedMessages));
    });
  }
}
// Chat BLoC
