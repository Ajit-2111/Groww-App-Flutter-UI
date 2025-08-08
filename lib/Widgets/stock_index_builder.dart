import 'package:flutter/material.dart';
import 'package:hello/AppData/constants.dart';
import 'package:hello/AppData/static_data.dart';
import 'package:hello/Widgets/stock_index_container.dart';

class StockIndexBuilder extends StatelessWidget {
  const StockIndexBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(8.0),
      height: 70,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: StaticData.stockIndexData.length,
          itemBuilder: (context, index) {
            final objStockIndex = StaticData.stockIndexData[index];
            // final isPositive = objStockIndex.dOpeningDifference < 0;
            final indexColor = objStockIndex.dOpeningDifference < 0
                ? ColorConstants.loss
                : ColorConstants.profit;
            return StockIndexContainer(
                objStockIndex: objStockIndex, indexColor: indexColor);
          }),
    );
  }
}
