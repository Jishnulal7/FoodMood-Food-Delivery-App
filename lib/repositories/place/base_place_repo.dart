

import '../../models/place_autocomplete_model.dart';
import '../../models/place_model.dart';

abstract class BasePlacesRepository {
  // ignore: body_might_complete_normally_nullable
  Future<List<PlaceAutocomplete>?> getAutocomplete(String searchInput) async {}

  // ignore: body_might_complete_normally_nullable
  Future<Place?> getPlace(String placeId) async {}
}
