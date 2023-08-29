import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/src/modules/home/home_controller.dart';
import 'package:widgets/src/modules/home/home_page.dart';
import 'package:widgets/src/modules/repositories/repository_caracteristica.dart';

class HomeModule extends Module {
  @override
  List<Bind> binds = [
    Bind.lazySingleton((i) => HomeController(i())),
    Bind.lazySingleton((i) => RepositoryCaracteristica())
  ];

  @override
  List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const HomePage(),
    ),
  ];
}
