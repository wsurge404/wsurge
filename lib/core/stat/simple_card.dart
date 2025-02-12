import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SimpleStatCard extends StatelessWidget {
  final String title;
  final String unit;
  final String description;
  final VoidCallback? onTap;
  final IconData iconData;
  final MaterialColor color;

  SimpleStatCard({
    super.key,
    required this.title,
    required this.unit,
    required this.description,
    required this.color,
    required this.iconData,
    this.onTap,
  });

  const SimpleStatCard.unformatted({
    super.key,
    required this.title,
    required this.unit,
    required this.description,
    required this.color,
    required this.iconData,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData(:textTheme,:iconTheme, :brightness) = Theme.of(context);

    return Card(
      color: brightness == Brightness.dark ? color.shade100 : color.shade50,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                      iconData,color: color.shade900,size:20,),
                 const Gap(5),
                  AutoSizeText.rich(
                    TextSpan(
                      text: title,
                      style: textTheme.titleSmall?.copyWith(
                        color: color.shade900,
                      ),
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
              const Gap(10),
              AutoSizeText.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: description,
                        style: textTheme.titleMedium?.copyWith(
                          color: color.shade900,
                        ),
                      ),
                      TextSpan(
                        text: " $unit",
                        style: textTheme.titleSmall?.copyWith(
                          color: color.shade900,
                        ),
                      )
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
