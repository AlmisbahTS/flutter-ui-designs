import 'package:flutter/material.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

import './screens/Home/Home.dart';
import './screens/UiList/UiList.dart';
import './screens/UiDetail/UIDetail.dart';

import './MiniApps/HealtyFoodDelivery/HomeScreen.dart';
import './MiniApps/HealtyFoodDelivery/ItemDetailScreen.dart';

class AppNavigator extends StatelessWidget {
  AppNavigator();
  final FirebaseAnalytics analytics = FirebaseAnalytics();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        "home": (ctx) => new HomeScreen(),
        "uiList": (ctx) => new UiListScreen(),
        "uiDetail": (ctx) => new UiDetailScreen(),
        "hfdHome": (ctx) => new HealtyFoodDeliveryHomeScreen(),
        "hfdItemDetail": (ctx) => new HealtyFoodDeliveryItemDetailScreen(),
      },
    );
  }
}
