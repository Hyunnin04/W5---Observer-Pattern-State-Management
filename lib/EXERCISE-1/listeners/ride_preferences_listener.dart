import 'package:week_3_blabla_project/EXERCISE-1/model/ride_pref/ride_pref.dart';

// This listener is used to notify the UI when the ride preferences are changed
abstract class RidePreferencesListener {
  void onRidePreferencesChanged(RidePreference selectedPreference);
}