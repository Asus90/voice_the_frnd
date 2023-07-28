import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voice_assistant/ListenUser/listen_bloc.dart';

class MainHomeItems extends StatelessWidget {
  const MainHomeItems({
    super.key,
    required this.mixedColor,
    required this.mixedColor2,
    required this.isRecording,
  });

  final Color mixedColor;
  final Color mixedColor2;
  final ValueNotifier<bool> isRecording;

  @override
  Widget build(BuildContext context) {
    AudioPlayer _player = AudioPlayer();
    return BlocBuilder<ListenBloc, ListenState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              child: Text(state.userMgsText),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [mixedColor, mixedColor2],
                ),
              ),
            ),
            Image.asset(
              'assets/images/80490-voice.gif',
              height: MediaQuery.of(context).size.height,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                  onTap: () {
                    // isRecording.value = !isRecording.value;
                    BlocProvider.of<ListenBloc>(context).add(ListenMe());
                    String effect =
                        'https://codeskulptor-demos.commondatastorage.googleapis.com/pang/pop.mp3';
                    _player.play(UrlSource(effect));
                  },
                  child: Icon(Icons.mic)),
            )
          ],
        );
      },
    );
  }
}
