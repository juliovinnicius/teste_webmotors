import 'package:flutter/material.dart';
import 'package:web_motors/modules/car_detail/presentation/car_detail_page.dart';
import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';
import 'package:web_motors/modules/list_cars/presentation/ui/list_car_page.dart';
import 'package:web_motors/modules/splash_screen/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case '/list_cars':
        return MaterialPageRoute(
          builder: (_) => const ListCarPage(),
        );

      case '/car_detail':
        final args = settings.arguments as CarEntity;
        return MaterialPageRoute(
          builder: (_) => CarDetailPage(car: args),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Rota não definida para ${settings.name}'),
            ),
          ),
        );
    }
  }
}
