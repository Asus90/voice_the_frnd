import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:speech_to_text/speech_to_text.dart';

part 'listen_event.dart';
part 'listen_state.dart';

class ListenBloc extends Bloc<ListenEvent, ListenState> {
  ListenBloc() : super(initalSate()) {
    on<ListenMe>((event, emit) async {
      SpeechToText speachTotext = SpeechToText();
      var available = await speachTotext.initialize();
      if (available) {
        String UserMsg = '';
        speachTotext.listen(onResult: (result) {
          UserMsg = result.recognizedWords;
        });
        return emit(ListenState(IsListenig: true, userMgsText: UserMsg));
      }
    });
  }
}
