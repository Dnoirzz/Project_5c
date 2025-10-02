import 'package:flutter/material.dart';

class AppPadding {
  // General padding values
  static const EdgeInsets all16 = EdgeInsets.all(16);
  static const EdgeInsets all12 = EdgeInsets.all(12);
  static const EdgeInsets all8 = EdgeInsets.all(8);
  static const EdgeInsets all4 = EdgeInsets.all(4);

  // Horizontal padding
  static const EdgeInsets horizontal12 = EdgeInsets.symmetric(horizontal: 12);
  static const EdgeInsets horizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets horizontal24 = EdgeInsets.symmetric(horizontal: 24);

  // Vertical padding
  static const EdgeInsets vertical4 = EdgeInsets.symmetric(vertical: 4);
  static const EdgeInsets vertical12 = EdgeInsets.symmetric(vertical: 12);
  static const EdgeInsets vertical14 = EdgeInsets.symmetric(vertical: 14);
  static const EdgeInsets vertical16 = EdgeInsets.symmetric(vertical: 16);

  // Specific padding combinations
  static const EdgeInsets symmetric12_16 = EdgeInsets.symmetric(
    vertical: 12,
    horizontal: 16,
  );
  static const EdgeInsets symmetric12_24 = EdgeInsets.symmetric(
    vertical: 12,
    horizontal: 24,
  );
  static const EdgeInsets symmetric4_12 = EdgeInsets.symmetric(
    vertical: 4,
    horizontal: 12,
  );
  static const EdgeInsets symmetric14_12 = EdgeInsets.symmetric(
    vertical: 14,
    horizontal: 12,
  );

  // Bottom padding
  static const EdgeInsets bottom80 = EdgeInsets.only(bottom: 80);
  static const EdgeInsets bottom12 = EdgeInsets.only(bottom: 12);
  static const EdgeInsets bottom10 = EdgeInsets.only(bottom: 10);
  static const EdgeInsets bottom4 = EdgeInsets.only(bottom: 4);

  // Top padding
  static const EdgeInsets top12 = EdgeInsets.only(top: 12);
  static const EdgeInsets top10 = EdgeInsets.only(top: 10);
  static const EdgeInsets top6 = EdgeInsets.only(top: 6);
  static const EdgeInsets top4 = EdgeInsets.only(top: 4);

  // Right padding
  static const EdgeInsets right12 = EdgeInsets.only(right: 12);
  static const EdgeInsets right8 = EdgeInsets.only(right: 8);

  // Left padding
  static const EdgeInsets left8 = EdgeInsets.only(left: 8);

  // Width and height spacing
  static const double width8 = 8.0;
  static const double width6 = 6.0;
  static const double width4 = 4.0;
  static const double width2 = 2.0;

  static const double height80 = 80.0;
  static const double height16 = 16.0;
  static const double height12 = 12.0;
  static const double height10 = 10.0;
  static const double height6 = 6.0;
  static const double height4 = 4.0;

  // Border radius
  static const double radius12 = 12.0;
  static const double radius8 = 8.0;
  static const double radius20 = 20.0;
  static const double radius16 = 16.0;

  // Icon sizes
  static const double iconSize20 = 20.0;
  static const double iconSize18 = 18.0;

  // Font sizes
  static const double fontSize18 = 18.0;
  static const double fontSize16 = 16.0;
  static const double fontSize12 = 12.0;
  static const double fontSize11 = 11.0;
}
