import 'package:week_3_blabla_project/EXERCISE-1/listeners/ride_preferences_listener.dart';

import '../model/ride_pref/ride_pref.dart';
import '../repository/ride_preferences_repository.dart';

////
///   This service handles:
///   - The past ride preferences
///   - The currennt ride preferences
///
class RidePrefService {
  // Static private instance
  static RidePrefService? _instance;

  // Access to past preferences
  final RidePreferencesRepository repository;

  // The current preference
  RidePreference? _currentPreference;

  ///
  /// Private constructor
  ///
  RidePrefService._internal(this.repository);

  ///
  /// Initialize
  ///
  static void initialize(RidePreferencesRepository repository) {
    if (_instance == null) {
      _instance = RidePrefService._internal(repository);
    } else {
      throw Exception("RidePreferencesService is already initialized.");
    }
  }

  ///
  /// Singleton accessor
  ///
  static RidePrefService get instance {
    if (_instance == null) {
      throw Exception(
          "RidePreferencesService is not initialized. Call initialize() first.");
    }
    return _instance!;
  }

  // Listeners management
  final List<RidePreferencesListener> _listeners = [];

  // Method to add a listener
  void addListener(RidePreferencesListener listener) {
    _listeners.add(listener);
  }

  // Notify all listeners when preference changes
  void _notifyListeners() {
    if (_currentPreference != null) {
      for (var listener in _listeners) {
        listener.onRidePreferencesChanged(_currentPreference!);
      }
    }
  }

  // Current preference
  RidePreference? get currentPreference {
    print('Get  current  pref : $_currentPreference');
    return _currentPreference;
  }

  void setCurrentPreference(RidePreference preference) {
    _currentPreference = preference;
    print('Set current pref to $_currentPreference');
    _notifyListeners(); // Notify listeners
  }

  // Past preferences
  List<RidePreference> getPastPreferences() {
    return repository.getPastPreferences();
  }

  void addPreference(RidePreference preference) {
    return repository.addPreference(preference);
  }
}
