import 'package:fabric_method_pattern_logistic/vehicles.dart';

abstract class Logistic {
  void createTransport();
}

class RoadLogistic extends Logistic {
  @override
  void createTransport() {
    Car().transport();
  }
}

class ShipLogistic extends Logistic {
  String seaOrRiver;

  ShipLogistic({required this.seaOrRiver});

  @override
  void createTransport() {
    Ship(seaOrRiver: seaOrRiver).transport();
  }
}

class TrainLogistic extends Logistic {
  bool ballast;
  double trackSize;

  TrainLogistic({required this.ballast, required this.trackSize});

  @override
  void createTransport() {
    Train(ballast: ballast, trackSize: trackSize).transport();
  }
}

class AirLogistic extends Logistic {
  String inCityOrOutCityOrOutCountry;
  bool passanger;

  AirLogistic(
      {required this.inCityOrOutCityOrOutCountry, required this.passanger});
  @override
  void createTransport() {
    Airplane(
            inCityOrOutCityOrOutCountry: inCityOrOutCityOrOutCountry,
            passanger: passanger)
        .transport();
  }
}
