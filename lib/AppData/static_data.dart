import 'package:hello/Models/MostPopularStockModel.dart';
import 'package:hello/Models/ProductsAndToolsModel.dart';
import 'package:hello/Models/StockIndexModel.dart';

class StaticData {
  StaticData._();

  static List<StockIndex> stockIndexData = [
    StockIndex(
      sIndexName: "Nifty 50",
      dIndexValue: 23133.00,
      dOpeningDifference: -81.23,
      dOpeningPercentDifference: 0.35,
    ),
    StockIndex(
      sIndexName: "Sensex",
      dIndexValue: 77245.12,
      dOpeningDifference: 120.45,
      dOpeningPercentDifference: 0.16,
    ),
    StockIndex(
      sIndexName: "Nifty Bank",
      dIndexValue: 49210.89,
      dOpeningDifference: -300.67,
      dOpeningPercentDifference: 0.61,
    ),
    StockIndex(
      sIndexName: "Nifty IT",
      dIndexValue: 36120.55,
      dOpeningDifference: 210.34,
      dOpeningPercentDifference: 0.58,
    ),
    StockIndex(
      sIndexName: "Nifty FMCG",
      dIndexValue: 18950.70,
      dOpeningDifference: -95.12,
      dOpeningPercentDifference: 0.50,
    ),
  ];

  static List<MostPopularStock> mostPopularStockData = [
    MostPopularStock(
      sStockImage: "assets/images/BSE_Image.png",
      sIndexName: "BSE",
      dIndexValue: 2409.90,
      dOpeningDifference: -76.70,
      dOpeningPercentDifference: 3.08,
    ),
    MostPopularStock(
      sStockImage: "assets/images/Swiggy_Image.png",
      sIndexName: "Swiggy",
      dIndexValue: 461.90,
      dOpeningDifference: 31.20,
      dOpeningPercentDifference: 7.24,
    ),
    MostPopularStock(
      sStockImage: "assets/images/Zomato_Image.png",
      sIndexName: "Zomato",
      dIndexValue: 280.11,
      dOpeningDifference: 6.80,
      dOpeningPercentDifference: 2.49,
    ),
    MostPopularStock(
      sStockImage: "assets/images/Triveni_Turbine_Image.png",
      sIndexName: "Triveni Turbine",
      dIndexValue: 823.96,
      dOpeningDifference: 59.80,
      dOpeningPercentDifference: 7.83,
    ),
  ];

  static List<ProductsAndToolsModel> productsAndToolsData = [
    ProductsAndToolsModel(
      sImagePath: "assets/images/fno_image.png",
      jBadgeCount: 0,
      sLabel: "F&O",
    ),
    ProductsAndToolsModel(
      sImagePath: "assets/images/events_image.png",
      jBadgeCount: 0,
      sLabel: "Events",
    ),
    ProductsAndToolsModel(
      sImagePath: "assets/images/ipo_image.png",
      jBadgeCount: 13,
      sLabel: "IPO",
    ),
    ProductsAndToolsModel(
      sImagePath: "assets/images/screener_image.png",
      jBadgeCount: 0,
      sLabel: "Screener",
    ),
  ];
}
