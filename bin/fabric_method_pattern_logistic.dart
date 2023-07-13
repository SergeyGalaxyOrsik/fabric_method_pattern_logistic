import 'package:fabric_method_pattern_logistic/logistic.dart';

void main() {

  Logistic logistic;

  logistic = AirLogistic(inCityOrOutCityOrOutCountry: 'outCountry', passanger: false);
  logistic.createTransport();

  logistic = TrainLogistic(ballast: false, trackSize: 1.4);
  logistic.createTransport();

}
