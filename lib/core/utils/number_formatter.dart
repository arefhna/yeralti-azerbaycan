import '../constants/game_constants.dart';

class NumberFormatter {
  NumberFormatter._();

  /// 1234 -> "1.23K", 1500000 -> "1.5M"
  static String format(double value) {
    if (value < 1000) {
      return value.toStringAsFixed(value < 10 ? 2 : 0);
    }

    int suffixIndex = 0;
    double v = value;
    while (v >= 1000 && suffixIndex < GameConstants.suffixes.length - 1) {
      v /= 1000;
      suffixIndex++;
    }

    final decimals = v < 10 ? 2 : (v < 100 ? 1 : 0);
    return '${v.toStringAsFixed(decimals)}${GameConstants.suffixes[suffixIndex]}';
  }

  /// Duration -> "2s 15d" (saat, dəqiqə)
  static String formatDuration(Duration d) {
    if (d.inHours > 0) {
      return '${d.inHours}s ${d.inMinutes % 60}d';
    }
    if (d.inMinutes > 0) {
      return '${d.inMinutes}d ${d.inSeconds % 60}san';
    }
    return '${d.inSeconds}san';
  }
}
