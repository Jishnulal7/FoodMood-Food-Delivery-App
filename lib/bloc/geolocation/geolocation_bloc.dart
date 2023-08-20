// ignore_for_file: invalid_use_of_visible_for_testing_member


import 'package:food_mood_app/repositories/geolocation/geolocation/geolocation_repository.dart';

import '../blocs.dart';


part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  final GeolocationRepository _geolocationRepository;
  StreamSubscription? _geolocationSubscription;

  GeolocationBloc({required GeolocationRepository geolocationRepository})
      : _geolocationRepository = geolocationRepository,
        super(GeolocationLoading()) {
    on<LoadGeolocation>((event, emit) {
      _mapLoadGeolocationToState().listen(emit);
    });

    on<UpdateGeolocation>((event, emit) {
      _mapUpdateGeolocationToState(event, emit);
    });
  }

Stream<GeolocationState> _mapLoadGeolocationToState() async* {
  yield GeolocationLoading();

  try {
    final Position? position =
        await _geolocationRepository.getCurrentLocation();

    if (position != null) {
      emit(GeolocationLoaded(position: position, geolocation: null));
    } else {
      yield GeolocationError();
    }

    // This line is moved after the `emit()` call.
    _geolocationSubscription?.cancel();
  } catch (_) {
    yield GeolocationError();
  }
}



  Stream<GeolocationState> _mapUpdateGeolocationToState(
      UpdateGeolocation event, Emitter<GeolocationState> emit) async* {
    yield GeolocationLoaded(position: event.position, geolocation: null);
  }

  @override
  Future<void> close() {
    _geolocationSubscription?.cancel();
    return super.close();
  }
}
