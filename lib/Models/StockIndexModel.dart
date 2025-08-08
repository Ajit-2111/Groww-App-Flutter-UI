import 'package:flutter/material.dart';

class StockIndex {
  final String sIndexName;
  final double dIndexValue;
  final double dOpeningDifference;
  final double dOpeningPercentDifference;

  StockIndex({
    required this.sIndexName,
    required this.dIndexValue,
    required this.dOpeningDifference,
    required this.dOpeningPercentDifference,
  });

  
  factory StockIndex.fromJson(Map<String, dynamic> json) {
    return StockIndex(
      sIndexName: json['sIndexName'],
      dIndexValue: json['dIndexValue'],
      dOpeningDifference: json['dOpeningDifference'],
      dOpeningPercentDifference: json['dOpeningPercentDifference'],
    );
  }


  Map<String, dynamic> toJson() => {
        'sIndexName': sIndexName,
        'dIndexValue': dIndexValue,
        'dOpeningDifference': dOpeningDifference,
        'dOpeningPercentDifference': dOpeningPercentDifference,
      };
}
