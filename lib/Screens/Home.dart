import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hello/AppData/constants.dart';
import 'package:hello/AppData/home_tabs.dart';
import 'package:hello/Widgets/main_appbar.dart';
import 'package:hello/Widgets/stock_index_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: HomeTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: HomeTabs.length,
      child: Scaffold(
        appBar: MainAppbar(sTitle: "Stocks"),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      StockIndexBuilder(),
                      AnimatedBuilder(
                        animation: _tabController,
                        builder: (context, child) {
                          return TabBar(
                            dividerColor: Colors.transparent,
                            tabAlignment: TabAlignment.start,
                            isScrollable: true,
                            controller: _tabController,
                            indicatorColor: Colors.transparent,
                            overlayColor: MaterialStateProperty.all(Colors
                                .transparent),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 0.0),
                            labelPadding: EdgeInsets.all(3.0),
                            tabs: List.generate(HomeTabs.length, (index) {
                              final sTabName = HomeTabs[index].label;
                              final isSelected = _tabController.index == index;
                              return Tab(
                                child: Container(
                                  margin: EdgeInsets.only(right: 8),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? ColorConstants.selectedGray
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: isSelected
                                          ? Colors.white
                                          : Color(0xff4b4b4b),
                                    ),
                                  ),
                                  child: Text(
                                    sTabName,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: HomeTabs.map((tab) => tab.content).toList(),
          ),
        ),
      ),
    );
  }
}
