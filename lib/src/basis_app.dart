import '../flutter_micro_basis.dart';

mixin BasisApp {
  List<MicroApp> get microApps;

  Map<String, BasisRoute> get basisRoutes;

  final Map<String, BasisRoute> registeredRoutes = {};

  void configureRoutes() {
    if (basisRoutes.isNotEmpty) registeredRoutes.addAll(basisRoutes);

    if (microApps.isNotEmpty) {
      for (final microApp in microApps) {
        registeredRoutes.addAll(microApp.routes);
      }
    }
  }

  void configureListener() {
    if (microApps.isNotEmpty) {
      for (MicroApp e in microApps) e.eventListener();
    }
  }
  
  void configureInjection() {
    if (microApps.isNotEmpty) {
      for (MicroApp e in microApps) e.injectionRegister();
    }
  }
}
