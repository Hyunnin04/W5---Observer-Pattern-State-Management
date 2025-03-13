import 'package:week_3_blabla_project/EXERCISE-1/model/ride/ride.dart';
import 'package:week_3_blabla_project/EXERCISE-1/model/ride_pref/ride_pref.dart';
import 'package:week_3_blabla_project/EXERCISE-1/service/rides_service.dart';


abstract class RidesRepository {
  List<Ride> getRides(RidePreference preference, RidesFilter? filter);
}
