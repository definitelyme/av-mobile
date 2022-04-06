library grouped_history_card.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// A stateless widget to render GroupedLayoutCard.
class GroupedLayoutCard extends StatelessWidget {
  final DateTime? dateTime;
  final Widget Function(int) layout;
  final int count;
  final EdgeInsets? titlePadding;
  final EdgeInsets? contentPadding;
  final double? verticalGap;

  const GroupedLayoutCard({
    Key? key,
    required this.dateTime,
    required this.layout,
    required this.count,
    this.titlePadding,
    this.contentPadding,
    this.verticalGap,
  }) : super(key: key);

  String get formattedDate {
    final isToday = DateTime.now().difference(dateTime!).inDays == 0;
    return isToday ? 'Today' : '${DateFormat.yMMMEd().format(dateTime!)}';
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      // primary: false,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: titlePadding ?? EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.008.h),
          sliver: SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Headline(
                '$formattedDate',
                maxLines: 1,
                maxFontSize: 18,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.left,
                letterSpacing: Utils.labelLetterSpacing,
              ),
            ),
          ),
        ),
        //
        SliverPadding(
          padding: contentPadding ?? EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.008.h),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, i) => Column(
                children: [
                  layout.call(i),
                  //
                  VerticalSpace(height: verticalGap ?? 0.015.h),
                ],
              ),
              childCount: count,
            ),
          ),
        ),
      ],
    );
  }
}
