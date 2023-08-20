import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/geolocation/geolocation_bloc.dart';
import '../../bloc/place/place_bloc.dart';
import '../../widgets/gmap.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
      ),
      body: BlocBuilder<PlaceBloc, PlaceState>(
        builder: (context, state) {
          if (state is PlaceLoading) {
            return Stack(
              children: [
                BlocBuilder<GeolocationBloc, GeolocationState>(
                  builder: (context, state) {
                    if (state is GeolocationLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is GeolocationLoaded) {
                      return Stack(
                        children: [
                          Gmap(
                            lat: state.position.latitude,
                            lng: state.position.longitude,
                          ),
                        ],
                      );
                    } else {
                      return const Text('Something went wrong!');
                    }
                  },
                ),
                const SaveButton(),
                // const Location(),
              ],
            );
          } else if (state is PlaceLoaded) {
            return Stack(
              children: [
                Gmap(
                  lat: state.place.lat,
                  lng: state.place.lon,
                ),
                const SaveButton(),
                // const Location(),
              ],
            );
          } else {
            return const Text('Something went wrong!');
          }
        },
      ),
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 20,
      right: 20,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor),
          child: const Text('Save'),
          onPressed: () {
            // final geolocationState =
            //     BlocProvider.of<GeolocationBloc>(context).state;
            // if (geolocationState is GeolocationLoaded) {
            //   final latitude = geolocationState.position.latitude;
            //   final longitude = geolocationState.position.longitude;
            //   print(latitude);
            //   print(longitude);
            // }
            final placeState = BlocProvider.of<PlaceBloc>(context).state;

            if (placeState is PlaceLoaded) {
              // Access the selected Place object
              final place = placeState.place;
              print(place.name);

              // For example, you can call a method to save it to a database.
              // Access the place details using place attributes like place.name, place.lat, place.lon, etc.
              Navigator.pop(context);
            }
          },
        ),
      ),
    );
  }
}
