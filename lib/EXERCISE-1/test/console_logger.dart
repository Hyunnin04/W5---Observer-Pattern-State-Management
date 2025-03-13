import 'package:week_3_blabla_project/EXERCISE-1/listeners/ride_preferences_listener.dart';
import 'package:week_3_blabla_project/EXERCISE-1/repository/mock/mock_ride_preferences_repository.dart';
import 'package:week_3_blabla_project/EXERCISE-1/service/ride_prefs_service.dart';

import '../dummy_data/dummy_data.dart';
import '../model/ride_pref/ride_pref.dart';

class ConsoleLogger implements RidePreferencesListener {
  @override
  void onRidePreferencesChanged(RidePreference selectedPreference) {
    print('ConsoleLogger Ride preference changed to: $selectedPreference');
  }
}

void main() {
  // setup the test
  final testPrefs1 = fakeRidePrefs[0];
  final testPrefs2 = fakeRidePrefs[1];

  // initialize the ride preference service
  RidePrefService.initialize(MockRidePreferencesRepository());
  final service = RidePrefService.instance; // get the instance

  //Create and register the logger
  ConsoleLogger logger = ConsoleLogger();
  service.addListener(logger);

  // Test preference changes
  print('Testing 1 preference change:');
  service.setCurrentPreference(testPrefs1);

  print("\nTesting 2 preference change:");
  service.setCurrentPreference(testPrefs2);
}
