
import 'package:vruksh_guru/pages/main_page.dart';

import 'package:vruksh_guru/screens/form_screen.dart';

import 'package:vruksh_guru/screens/ob_garden_name.dart';
import 'package:vruksh_guru/screens/ob_location_analyze.dart';
import 'package:vruksh_guru/screens/ob_location_screen.dart';
import 'package:vruksh_guru/screens/onboarding_screen.dart';
import 'package:vruksh_guru/screens/plant_detail.dart';
import 'package:vruksh_guru/screens/plants_slot_screen.dart';

import 'package:vruksh_guru/screens/tasks_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:vruksh_guru/widgets/product_view.dart';


Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => MainPage(),
  '/tasks': (p0) => TasksListScreen(),
  '/form': (p0) => FormScreen(),
  '/obname': (p0) => ObGardenName(),
  '/oblocation': (p0) => ObLocationScreen(),
  '/plantdetail': (p0) => PlantDetailScreen(),
  '/slots': (p0) => PlantSlotScreen(),
  '/ob': (p0) => OnboaardingScreen(),
  '/oblocationanalysis': (p0) => ObLocationAnalysis(),
  '/test': (p0) => MyApp(),
};
