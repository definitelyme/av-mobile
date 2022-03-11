library bottom_navigation.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/widgets.dart';

class BottomNav {
  final int id;
  final IconData icon;
  final String title;

  const BottomNav({required this.id, required this.title, required this.icon});

  static List<BottomNav> get list => [
        const BottomNav(id: 0, title: 'Home', icon: AVIcons.nav_home),
        //
        const BottomNav(id: 1, title: 'Live', icon: AVIcons.nav_live),
        //
        const BottomNav(id: 2, title: 'Sell', icon: AVIcons.nav_sell),
        //
        const BottomNav(id: 3, title: 'Chat', icon: AVIcons.nav_chat),
        //
        const BottomNav(id: 4, title: 'More', icon: AVIcons.nav_menu),
      ];

  @override
  bool operator ==(o) {
    if (identical(this, o)) return true;
    return o is BottomNav && o.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'BottomNav(id: $id, title: $title)';
}
