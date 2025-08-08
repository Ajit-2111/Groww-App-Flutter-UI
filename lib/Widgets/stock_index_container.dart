import 'package:flutter/material.dart';
import 'package:hello/AppData/constants.dart';
import 'package:hello/Models/StockIndexModel.dart';
import 'package:hello/utility/number_utility.dart';

class StockIndexContainer extends StatelessWidget {
  const StockIndexContainer({
    super.key,
    required this.objStockIndex,
    required this.indexColor,
  });

  final StockIndex objStockIndex;
  final Color indexColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstants.selectedGray,
          width: 2,
        ),
        color: ColorConstants.background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            objStockIndex.sIndexName,
            style: TextStyle(color: Colors.white),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: NumberUtils.formatDecimal(objStockIndex.dIndexValue),
                  style: TextStyle(
                    color: ColorConstants.white,
                    fontSize: 12,
                  ),
                ),
                WidgetSpan(child: SizedBox(width: 10)),
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
  }
}
