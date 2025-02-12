import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wsurge/utils/spaced_list_widget.dart';

// typedef PresentableStat = ({Widget label, Widget data, String? semanticLabel});
class PresentableStat {
  Widget label;
  Widget data;
  String? semanticLabel;

  PresentableStat(
      {required this.label, required this.data, this.semanticLabel});
}

class StatsCard extends StatelessWidget {
  const StatsCard({
    super.key,
    this.titleIcon,
    this.title,
    this.titleStyle,
    this.padding = const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
    this.labelStyle,
    this.dataStyle,
    required this.color,
    required this.stats,
  });

  final IconData? titleIcon;
  final String? title;
  final TextStyle? titleStyle;
  final EdgeInsets padding;
  final TextStyle? labelStyle;
  final TextStyle? dataStyle;
  final MaterialColor color;
  final List<PresentableStat> stats;

  @override
  Widget build(BuildContext context) {
    final ThemeData(:textTheme, :iconTheme, :brightness) = Theme.of(context);
    final effectiveTitleStyle = titleStyle ??
        textTheme.titleSmall?.copyWith(
          color: color.shade900,
        );
    final effectiveLabelStyle = labelStyle ??
        textTheme.bodySmall
            ?.copyWith(fontWeight: FontWeight.w300, color: Colors.black);
    final effectiveDataStyle = dataStyle ??
        textTheme.bodySmall
            ?.copyWith(fontWeight: FontWeight.w300, color: Colors.black);

    return Card(
      color: brightness == Brightness.dark ? color.shade100 : color.shade50,
      // margin: EdgeInsets.zero,
      shadowColor: Colors.transparent,
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (titleIcon != null) ...{
                  Icon(titleIcon,color: color.shade900,size:20,),
                  const Gap(5),
                },
                if (title != null) ...[
                  Text(
                    title!,
                    style: effectiveTitleStyle,
                  ),
                  const Gap(4),
                ]
              ],
            ),
            ...stats
                .map(
                  (stat) {
                    Widget label = IconTheme.merge(
                      data: const IconThemeData(size: 14),
                      child: DefaultTextStyle(
                        style: effectiveLabelStyle!,
                        overflow: TextOverflow.ellipsis,
                        child: stat.label,
                      ),
                    );
                    if (stat.semanticLabel != null) {
                      label = Tooltip(
                        message: stat.semanticLabel,
                        verticalOffset: 8,
                        child: label,
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        label,
                        const Gap(2),
                        DefaultTextStyle(
                          style: effectiveDataStyle!,
                          overflow: TextOverflow.ellipsis,
                          child: Flexible(child: stat.data),
                        ),
                      ],
                    );
                  },
                )
                .toList()
                .spaceBy(height: 2),
          ],
        ),
      ),
    );
  }
}
