import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/notifiers/counter.dart';
import 'package:flutter_app_pilot/notifiers/location.dart';
import 'package:flutter_app_pilot/core/route_path_constants.dart';

final provider = StateNotifierProvider<CounterNotifier, CounterModel>(
    (ref) => CounterNotifier());

class Locations extends HookConsumerWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Location> locations = Location.fetchAll();

    final counter = ref.watch(provider).count;

    List<Widget> renderLocations(List<Location> locations) {
      return locations
          .map((eachLocation) => GestureDetector(
              onTap: () => _onLocationTap(context, eachLocation.id),
              child: Text(eachLocation.title)))
          .toList();
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Locations List"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView(
                  shrinkWrap: true, children: [...renderLocations(locations)]),
              Text("Counter: $counter"),
              GestureDetector(
                onTap: () => _onButtonPressed(ref),
                child: const Text("Increment"),
              )
            ]));
  }

  _onButtonPressed(WidgetRef ref) {
    ref.read(provider.notifier).increment();
  }

  _onLocationTap(BuildContext context, int id) {
    Navigator.pushNamed(context, RoutePathConstants.locationDetailRoute,
        arguments: {"id": id});
  }
}
