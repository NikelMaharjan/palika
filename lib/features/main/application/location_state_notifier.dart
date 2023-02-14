import 'package:palikaa/export_pages.dart';
import 'package:geolocator/geolocator.dart';
import '../../../routing/app_routes.dart';
import 'location_state.dart';


final locationProvider = StateNotifierProvider<LocationCheck, LocationState>((ref) => LocationCheck(LocationState(
    permission: LocationPermission.unableToDetermine, location: null, isLoad: false)));

class LocationCheck extends StateNotifier<LocationState>{

Position? position;
  LocationCheck(super.state);

    Future  getLocation(BuildContext context) async {
    state = state.copyWith(isLoad: true);
   LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
       permission =  await Geolocator.requestPermission();
    }else if (permission == LocationPermission.whileInUse || permission == LocationPermission.always) {
      try {
        position = await Geolocator.getCurrentPosition();
      } catch (err) {
        state = state.copyWith(isLoad: false);
        Exceptions.connectionShow(context);
      }
    }else if(permission == LocationPermission.deniedForever){
      state = state.copyWith(isLoad: false);
      await Geolocator.openAppSettings();
    }else{
      Exceptions.noteShow(context, 'please enable location');
    }
    if (position != null) {
      state = state.copyWith(isLoad: false, location: position);
      context.pushNamed(AppRoute.touristPlace.name, extra: position);
    } else {
      state = state.copyWith(isLoad: false);
      Exceptions.noteShow(context, 'please enable location');
    }

}
}