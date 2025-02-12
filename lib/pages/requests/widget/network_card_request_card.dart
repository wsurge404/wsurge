import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/pages/requests/model/request_entity.dart';

class NetworkRequestCard extends HookConsumerWidget {
  final Color indicatorColor;
  final RequestEntity requestEntity;

  NetworkRequestCard({
    required this.indicatorColor,
    required this.requestEntity,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData(:textTheme) = Theme.of(context);
    var header = textTheme.bodySmall
        ?.copyWith(fontWeight: FontWeight.w300, color: Colors.grey);
   var urlStyle =  textTheme.titleSmall?.copyWith(
      color: Colors.white,
    );
    return Card(
      // color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 6,
                  height: 10,
                  decoration: BoxDecoration(
                    color: indicatorColor,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  requestEntity.packageName!,
                  style:header,
                ),
                Spacer(),
                Text(
                  "105",
                  style: header,
                ),
              ],
            ),
            SizedBox(height: 8),
            AutoSizeText.rich(
              TextSpan(
                text: requestEntity.url,
                style: urlStyle,
              ),
              maxLines: 1,
            ),
           const Gap(4),
            // Text(
            //   geoInfo,
            //   style: header,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // width: 6,
                  // height: 10,
                  decoration: BoxDecoration(
                    color: indicatorColor,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Text(
                    requestEntity.method,
                    style:header,
                  ),
                ),
                Text(
                  "client",
                  style: header,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}