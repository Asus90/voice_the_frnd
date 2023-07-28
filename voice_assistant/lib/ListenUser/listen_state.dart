part of 'listen_bloc.dart';

class ListenState {
  bool IsListenig;
  String userMgsText;

  ListenState({required this.IsListenig, required this.userMgsText});
}

class initalSate extends ListenState {
  initalSate() : super(IsListenig: false, userMgsText: 'Listenig');
}
