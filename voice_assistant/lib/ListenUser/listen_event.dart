part of 'listen_bloc.dart';

@immutable
abstract class ListenEvent {}

class ListenMe extends ListenEvent {}

class CeancelMe extends ListenEvent {}
