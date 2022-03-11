library place_type.dart;

import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'place_type.g.dart';

PlaceType deserializePlaceType(String? json) => PlaceType.valueOf('$json');
FutureOr<String?> serializePlaceType(PlaceType? object) => object?.name;

class PlaceType extends EnumClass {
  static const PlaceType airport = _$airport;
  static const PlaceType school = _$school;
  static const PlaceType bus_station = _$bus_station;
  static const PlaceType book_store = _$book_store;
  static const PlaceType cafe = _$cafe;
  static const PlaceType doctor = _$doctor;
  static const PlaceType fire_station = _$fire_station;
  static const PlaceType gas_station = _$gas_station;
  static const PlaceType hospital = _$hospital;
  static const PlaceType university = _$university;
  static const PlaceType atm = _$atm;
  static const PlaceType train_station = _$train_station;
  static const PlaceType cemetery = _$cemetery;
  static const PlaceType church = _$church;
  static const PlaceType bar = _$bar;
  static const PlaceType supermarket = _$supermarket;
  static const PlaceType secondary_school = _$secondary_school;
  static const PlaceType dentist = _$dentist;
  static const PlaceType restaurant = _$restaurant;
  static const PlaceType primary_school = _$primary_school;
  static const PlaceType stadium = _$stadium;
  static const PlaceType spa = _$spa;
  static const PlaceType convenience_store = _$convenience_store;
  static const PlaceType taxi_stand = _$taxi_stand;
  static const PlaceType transit_station = _$transit_station;
  static const PlaceType post_office = _$post_office;
  static const PlaceType pharmacy = _$pharmacy;
  static const PlaceType parking = _$parking;
  static const PlaceType park = _$park;
  static const PlaceType physiotherapist = _$physiotherapist;
  static const PlaceType drugstore = _$drugstore;
  static const PlaceType electronics_store = _$electronics_store;
  static const PlaceType electrician = _$electrician;
  static const PlaceType hardware_store = _$hardware_store;
  static const PlaceType museum = _$museum;
  static const PlaceType mosque = _$mosque;
  static const PlaceType veterinary_care = _$veterinary_care;
  static const PlaceType local_government_office = _$local_government_office;
  static const PlaceType library = _$library;
  static const PlaceType zoo = _$zoo;
  static const PlaceType maternity = _$maternity;

  const PlaceType._(String name) : super(name);

  static BuiltSet<PlaceType> get values => _$values;

  static List<PlaceType> get list => values.toList(growable: false);

  static PlaceType valueOf(String name) => _$valueOf(name);
}
