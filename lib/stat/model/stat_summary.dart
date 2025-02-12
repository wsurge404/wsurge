import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_summary.freezed.dart';

@freezed
class StatSummary with _$StatSummary {
  const StatSummary._();

  const factory StatSummary({required int uplink, required int downlink}) =
      _StatSummary;

  factory StatSummary.empty() => const StatSummary(uplink: 0, downlink: 0);
}

class SummaryTest {
  int uplink,downlink;
  SummaryTest({required this.uplink, required this.downlink});
}
