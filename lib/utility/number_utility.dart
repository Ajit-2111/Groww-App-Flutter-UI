import 'package:intl/intl.dart';

class NumberUtils {
  static final _decimalFormatter = NumberFormat.decimalPattern('en_IN');
  static final _currencyFormatter =
      NumberFormat.currency(locale: 'en_IN', symbol: '₹');

  /// Format number with Indian comma style (e.g., 1,23,456.78)
  static String formatDecimal(num number) {
    return _decimalFormatter.format(number);
  }

  /// Format number as Indian currency (e.g., ₹1,23,456.78)
  static String formatCurrency(num number) {
    return _currencyFormatter.format(number);
  }

  /// Format percent (e.g., "+0.56%")
  static String formatPercent(num percentValue, {bool showSign = true}) {
    final sign = showSign && percentValue >= 0 ? '+' : '';
    return '($sign${_decimalFormatter.format(percentValue)}%)';
  }

  /// Format difference with sign (e.g., "+120.45" or "-45.23")
  static String formatDifference(num differenceValue, {bool showSign = true}) {
    final sign = showSign && differenceValue >= 0 ? '+' : '';
    return '$sign${_decimalFormatter.format(differenceValue)}';
  }
}
