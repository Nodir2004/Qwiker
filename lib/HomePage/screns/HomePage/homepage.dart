import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class HomepageMap extends StatefulWidget {
  const HomepageMap({super.key});

  @override
  State<HomepageMap> createState() => _HomepageMapState();
}

class _HomepageMapState extends State<HomepageMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:Expanded(child: YandexMap())),);
  }
}