import '../flutter_micro_basis.dart';

abstract interface class MicroApp {
  String get name;
  Map<String, BasisRoute> get routes;
  void Function() get injectionRegister;
  void Function() get eventListener;
}