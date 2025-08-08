import 'package:flutter/cupertino.dart';
import 'package:hello/Models/custom_tab.dart';
import 'package:hello/Widgets/home_tab_view_widgets/explore_tab.dart';

final List<CustomTab> HomeTabs = [
  CustomTab(label: "Explore", content: HomeExploreTab()),
  CustomTab(label: "Holdings", content: Container()),
  CustomTab(label: "Positions", content: Container()),
  CustomTab(label: "Orders", content: Container()),
  CustomTab(label: "Z's Watchlist", content: Container()),
  CustomTab(label: "All Watchlists", content: Container()),
];
