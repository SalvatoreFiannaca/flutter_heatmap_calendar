import 'package:flutter/material.dart';
import '../util/date_util.dart';

class HeatMapWeekText extends StatelessWidget {
  /// The margin value for correctly space between labels.
  final EdgeInsets? margin;

  /// The double value of label's font size.
  final double? fontSize;

  /// Locale
  final String? locale;

  /// The double value of every block's size to fit the height.
  final double? size;

  /// The color value of every font's color.
  final Color? fontColor;

  const HeatMapWeekText({
    Key? key,
    this.margin,
    this.fontSize,
    this.size,
    this.locale,
    this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> weekLabels;

    switch (locale) {
      case 'it':
        weekLabels = DateUtil.WEEK_LABEL_IT;
        break;
      default:
        weekLabels = DateUtil.WEEK_LABEL;
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        for (String label in weekLabels)
          Container(
            height: size ?? 20,
            margin: margin ?? const EdgeInsets.all(2.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: fontSize ?? 12,
                color: fontColor,
              ),
            ),
          ),
      ],
    );
  }
}
