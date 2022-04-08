import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RideModel {
  final String Location;
  final String time;

  RideModel(
      {required this.Location, required this.time});
}
List<RideModel> bundle = [
  RideModel(
      Location: "Kariakoo kamata",
      time: "15:34 Pm"),

  RideModel(
      Location: "Mbezi Mkabe",
      time: "15:30 Pm"),

  RideModel(
      Location: "KariaKoo Kamata",
      time: "15:10 Pm"),

  RideModel(
      Location: "Mbezi Kamata",
      time: "14:30 Pm"),

  RideModel(
      Location: "Kimara Mwisho",
      time: "20:30 Pm"),

  RideModel(
      Location: "Ubungo Riverside",
      time: "20:30 Pm"),

];

class RideTypeModel {
  final String icon;
  final String price;
  final String personIcon;
  final String numberOfpassangers;
  final String distanceIcon;
  final String distance;

  RideTypeModel(
      {required this.icon, required this.personIcon, required this.numberOfpassangers, required this.distanceIcon, required this.distance, required this.price,});
}

List<RideTypeModel> ride =[
  RideTypeModel(
      icon: 'moto icon',
      price: 'Tsh 10,000',
      distance: '15km',
      personIcon: 'icon',
      distanceIcon: 'distance',
      numberOfpassangers: '04'),

  RideTypeModel(
      icon: 'car icon',
      price: 'Tsh 10,000',
      distance: '15km',
      personIcon: 'icon',
      distanceIcon: 'distance',
      numberOfpassangers: '04'),

  RideTypeModel(
      icon: 'moto icon',
      price: 'Tsh 10,000',
      distance: '15km',
      personIcon: 'icon',
      distanceIcon: 'distance',
      numberOfpassangers: '04'),
];

