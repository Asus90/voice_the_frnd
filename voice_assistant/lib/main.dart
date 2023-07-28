import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voice_assistant/ListenUser/listen_bloc.dart';
import 'package:voice_assistant/mainPage/mainItem.dart';

main() async {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => ListenBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection:
              TextDirection.ltr, // Replace with the appropriate text direction
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 92, 91, 91).withOpacity(0.5),
              title: const Text('THE FRIEND'),
            ),
            body: HomePage(),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final ValueNotifier<bool> isRecording = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    Color mixedColor = const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5);
    Color mixedColor2 = const Color.fromARGB(255, 210, 65, 65).withOpacity(0.5);

    return MainHomeItems(
        mixedColor: mixedColor,
        mixedColor2: mixedColor2,
        isRecording: isRecording);
  }
}
