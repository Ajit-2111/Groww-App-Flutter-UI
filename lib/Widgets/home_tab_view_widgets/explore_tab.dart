import 'package:flutter/material.dart';
import 'package:hello/AppData/constants.dart';
import 'package:hello/AppData/static_data.dart';
import 'package:hello/Widgets/home_tab_view_widgets/most_popular_stock_builder.dart';
import 'package:hello/utility/number_utility.dart';

class HomeExploreTab extends StatelessWidget {
  const HomeExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Most traded on Groww",
            style: TextStyle(
              color: ColorConstants.white,
              fontSize: 20,
               
            ),
          ),
          SizedBox(height: 16),

          
          MostPopularStockBuilder(),

          SizedBox(height: 20),

          Text(
            "Product & tools",
            style: TextStyle(
              color: ColorConstants.white,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: StaticData.productsAndToolsData
                .map(
                  (objProduct) => Column(
                    spacing: 8.0,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConstants.selectedGray),
                            child: Image.asset(
                              objProduct.sImagePath,
                              width: 50,
                              height: 50,
                            ),
                          ),
                          if (objProduct.jBadgeCount > 0)
                            Positioned(
                              top: 4,
                              right: 4,
                              child: Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: ColorConstants.growwDarkGreen,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Text(
                                  '${objProduct.jBadgeCount}',
                                  style: const TextStyle(
                                      color: ColorConstants.growwPrimaryGreen,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Text(
                        objProduct.sLabel,
                        style: TextStyle(
                            color: ColorConstants.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
