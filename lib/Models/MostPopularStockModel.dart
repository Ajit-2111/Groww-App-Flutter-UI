import 'package:flutter/material.dart';

class MostPopularStock {
  final String sStockImage;
  final String sIndexName;
  final double dIndexValue;
  final double dOpeningDifference;
  final double dOpeningPercentDifference;

  MostPopularStock({
    required this.sStockImage,
    required this.sIndexName,
    required this.dIndexValue,
    required this.dOpeningDifference,
    required this.dOpeningPercentDifference,
  });

  
  factory MostPopularStock.fromJson(Map<String, dynamic> json) {
    return MostPopularStock(
      sStockImage: json['sStockImage'],
      sIndexName: json['sIndexName'],
      dIndexValue: json['dIndexValue'],
      dOpeningDifference: json['dOpeningDifference'],
      dOpeningPercentDifference: json['dOpeningPercentDifference'],
    );
  }

  
  Map<String, dynamic> toJson() => {
        "sStockImage": sStockImage,
        'sIndexName': sIndexName,
        'dIndexValue': dIndexValue,
        'dOpeningDifference': dOpeningDifference,
        'dOpeningPercentDifference': dOpeningPercentDifference,
      };
}
