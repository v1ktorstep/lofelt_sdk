import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/lofelt.dart',
  dartOptions: DartOptions(),
  swiftOut: 'ios/Classes/Lofelt.swift',
  swiftOptions: SwiftOptions(),
))
@HostApi()
abstract class Lofelt {
  void initHaptics();

  bool deviceMeetsMinimumRequirements();

  void load(String data);

  void play();

  void stop();

  void seek(double time);

  void loop(bool enabled);

  void setAmplitudeMultiplication(double factor);

  void setFrequencyShift(double shift);

  double clipDuration();
}
