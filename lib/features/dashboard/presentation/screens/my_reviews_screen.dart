library my_reviews_screen.dart;

import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

/// A stateless widget to render MyReviewsScreen.
class MyReviewsScreen extends StatelessWidget with AutoRouteWrapper {
  const MyReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'My Reviews',
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: SliverToBoxAdapter(
            child: Row(
              children: [
                AdaptiveText(
                  '4.8',
                  fontSize: 37.sp,
                  textColor: const Color(0xff222222),
                  textColorDark: Palette.headingDark,
                  fontWeight: FontWeight.w600,
                  letterSpacing: Utils.letterSpacing,
                ),
                //
                0.02.horizontalw,
                //
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Disabled(
                      disabled: true,
                      child: RatingBar(
                        glow: false,
                        allowHalfRating: true,
                        tapOnlyMode: true,
                        initialRating: 4.8,
                        minRating: 1,
                        maxRating: 5,
                        itemSize: 0.05.sw,
                        direction: Axis.horizontal,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0.005.sw),
                        ratingWidget: RatingWidget(
                          full:
                              const Icon(Icons.star_sharp, color: Colors.amber),
                          half: const Icon(Icons.star_half_sharp,
                              color: Colors.amber),
                          empty: const Icon(Icons.star_border_sharp,
                              color: Colors.amber),
                        ),
                        onRatingUpdate: (_) {},
                      ),
                    ),
                    //
                    AdaptiveText(
                      '124 reviews',
                      maxLines: 1,
                      softWrap: true,
                      fontSize: 16.sp,
                      textColor: const Color(0xff989DB3),
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        //
        SliverList(
          delegate: SliverChildListDelegate.fixed([
            0.02.verticalh,
            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
              child: const GroupedRating(title: 'Delivery', rating: 5.0),
            ),
            //
            0.025.verticalh,
            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
              child: const GroupedRating(title: 'Responsive', rating: 4.0),
            ),
            //
            0.025.verticalh,
            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
              child: const GroupedRating(title: 'Reliable', rating: 2),
            ),
            //
            0.025.verticalh,
            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
              child: const GroupedRating(title: 'Quality', rating: 5.0),
            ),
            //
            Divider(
                thickness: 1.5,
                height: 35,
                indent: App.sidePadding * 0.7,
                endIndent: App.sidePadding * 0.7),
          ]),
        ),
        //
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: SliverToBoxAdapter(
            child: MyHero(
              tag: null,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Disabled(
                    disabled: true,
                    child: RatingBar(
                      glow: false,
                      allowHalfRating: true,
                      tapOnlyMode: true,
                      initialRating: 3.4,
                      minRating: 1,
                      maxRating: 5,
                      itemSize: 0.05.sw,
                      direction: Axis.horizontal,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0.005.sw),
                      ratingWidget: RatingWidget(
                        full: const Icon(Icons.star_sharp, color: Colors.amber),
                        half: const Icon(Icons.star_half_sharp,
                            color: Colors.amber),
                        empty: const Icon(Icons.star_border_sharp,
                            color: Colors.amber),
                      ),
                      onRatingUpdate: (_) {},
                    ),
                  ),
                  //
                  0.01.verticalh,
                  //
                  AdaptiveText(
                    'The weather is amazing, walk with me through the pathway of more success. Take this journey with me, Lion! Major key, don’t fall for the trap, stay focused.',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: Utils.letterSpacing,
                  ),
                  //
                  0.01.verticalh,
                  //
                  AdaptiveText.rich(
                    TextSpan(children: [
                      const TextSpan(text: 'by David '),
                      TextSpan(
                        text: '23-11-2021',
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                    ]),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: Utils.letterSpacing,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ),
        ),
        //
        SliverList(
          delegate: SliverChildListDelegate.fixed([
            //
            const SizedBox(height: 14),
            //
            Divider(
                thickness: 1.5,
                height: 0,
                indent: App.sidePadding * 0.7,
                endIndent: App.sidePadding * 0.7),
            //
            const SizedBox(height: 8),
          ]),
        ),
      ],
    );
  }
}
