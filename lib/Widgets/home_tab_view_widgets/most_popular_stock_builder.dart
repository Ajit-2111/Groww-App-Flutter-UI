import 'package:flutter/material.dart';
import 'package:hello/AppData/constants.dart';
import 'package:hello/AppData/static_data.dart';
import 'package:hello/utility/number_utility.dart';

class MostPopularStockBuilder extends StatelessWidget {
  const MostPopularStockBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, 
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 12,
        mainAxisSpacing: 10,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        final objStockIndex = StaticData.mostPopularStockData[index];
        final indexColor = objStockIndex.dOpeningDifference < 0
            ? ColorConstants.loss
            : ColorConstants.profit;

        return Container(
          padding: EdgeInsets.only(left: 10.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorConstants.selectedGray,
              width: 2,
            ),
            color: ColorConstants.background,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            spacing: 8.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                objStockIndex.sStockImage,
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
              Text(
                objStockIndex.sIndexName,
                style: TextStyle(
                  color: ColorConstants.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                NumberUtils.formatCurrency(objStockIndex.dIndexValue),
                style: TextStyle(color: ColorConstants.white),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: NumberUtils.formatDifference(
                          objStockIndex.dOpeningDifference),
                      style: TextStyle(
                        color: indexColor,
                        fontSize: 12,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 8)),
                    TextSpan(
                      text: NumberUtils.formatPercent(
                          objStockIndex.dOpeningPercentDifference),
                      style: TextStyle(
                        color: indexColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
