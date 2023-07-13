abstract class Transport {
  String companyName;
  double maxWeight;
  double maxSize;

  Transport({
    required this.companyName,
    required this.maxSize,
    required this.maxWeight,
  });

  void transport() {}
}

class Car implements Transport {
  @override
  String companyName = 'BelTamozhnya';

  @override
  double maxSize = 23.5;

  @override
  double maxWeight = 15;

  @override
  void transport() {
    print(
        'This is car of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
  }
}

class Ship implements Transport {
  @override
  late String companyName;

  @override
  late double maxSize;

  @override
  late double maxWeight;

  String seaOrRiver;

  Ship({required this.seaOrRiver});

  @override
  void transport() {
    if (seaOrRiver == 'sea') {
      companyName = 'SeaShip Inc.';
      maxSize = 35.8;
      maxWeight = 20000;
      print(
          'This is ship of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
    } else if (seaOrRiver == 'river') {
      companyName = 'RiverShip Inc.';
      maxSize = 20;
      maxWeight = 10000;
      print(
          'This is ship of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
    } else {
      print('We don\'t have ship for tis type');
    }
  }
}

class Train implements Transport {
  @override
  late String companyName;

  @override
  late double maxSize;

  @override
  late double maxWeight;

  double trackSize;

  bool ballast;

  Train({required this.trackSize, required this.ballast});

  @override
  void transport() {
    if (ballast) {
      if (trackSize < 1.5) {
        companyName = 'SmallBallastTrain Inc.';
        maxSize = 1.45;
        maxWeight = 10000;
        print(
            'This is train of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
      } else {
        companyName = 'SmallBallastTrain Inc.';
        maxSize = 3;
        maxWeight = 20000;
        print(
            'This is train of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
      }
    } else {
      if (trackSize < 1.5) {
        companyName = 'SmallBallastTrain Inc.';
        maxSize = 1.45;
        maxWeight = 3000;
        print(
            'This is train of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
      } else {
        companyName = 'SmallBallastTrain Inc.';
        maxSize = 3;
        maxWeight = 6500;
        print(
            'This is train of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
      }
    }
  }
}

class Airplane implements Transport {
  @override
  late String companyName;

  @override
  late double maxSize;

  @override
  late double maxWeight;

  String inCityOrOutCityOrOutCountry;
  bool passanger;

  Airplane(
      {required this.inCityOrOutCityOrOutCountry, required this.passanger});

  @override
  void transport() {
    if (passanger) {
      if (inCityOrOutCityOrOutCountry == 'inCity') {
        companyName = 'InCityPassangerAirplane Inc.';
        maxSize = 5;
        maxWeight = 3.4;
        print(
            'This is airplane of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
      } else if (inCityOrOutCityOrOutCountry == 'outCity') {
        companyName = 'OutCityPassangerAirplane Inc.';
        maxSize = 6;
        maxWeight = 4.4;
        print(
            'This is airplane of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
      } else if (inCityOrOutCityOrOutCountry == 'outCountry') {
        companyName = 'OutCountryPassangerAirplane Inc.';
        maxSize = 10;
        maxWeight = 6.4;
        print(
            'This is airplane of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
      } else {
        print('This type is not exist');
      }
    } else {
      if (inCityOrOutCityOrOutCountry == 'inCity') {
        companyName = 'InCityNotPassangerAirplane Inc.';
        maxSize = 10;
        maxWeight = 7.4;
        print(
            'This is airplane of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
      } else if (inCityOrOutCityOrOutCountry == 'outCity') {
        companyName = 'OutCityNotPassangerAirplane Inc.';
        maxSize = 12;
        maxWeight = 9.4;
        print(
            'This is airplane of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
      } else if (inCityOrOutCityOrOutCountry == 'outCountry') {
        companyName = 'OutCountryNotPassangerAirplane Inc.';
        maxSize = 20;
        maxWeight = 20.4;
        print(
            'This is airplane of $companyName with next params:\n maximum size = $maxSize\n maximum weight = $maxWeight');
      } else {
        print('This type is not exist');
      }
    }
  }
}
