import 'package:flutter/material.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

const double _pagePadding = 16.0;
const double _buttonHeight = 56.0;
const double _pageBreakpoint = 768.0;
const double _bottomPaddingForButton = 150.0;

WoltModalSheetPage sheetPage(BuildContext context,double height,Widget title,Widget body,Widget footer) {
  return WoltModalSheetPage(
    hasSabGradient: false,

    stickyActionBar: footer,
    topBarTitle: title,
    isTopBarLayerAlwaysVisible: true,
    trailingNavBarWidget: IconButton(
      padding: const EdgeInsets.all(_pagePadding),
      icon: const Icon(Icons.close),
      onPressed: Navigator.of(context).pop,
    ),
    child: Container(
      height: height,
      child: body,
    ));
}

void showModal(BuildContext context, List<SliverWoltModalSheetPage> Function(BuildContext) toPage) {
  WoltModalSheet.show<void>(
    context: context,
    pageListBuilder: (modalSheetContext) {
      return toPage(modalSheetContext);
    },
    modalTypeBuilder: (context) {
      final size = MediaQuery.sizeOf(context).width;
      if (size < _pageBreakpoint) {
        return WoltModalType.bottomSheet();
      } else {
        return WoltModalType.dialog();
      }
    },
    onModalDismissedWithBarrierTap: () {
      Navigator.of(context).pop();
    },
  );
}
