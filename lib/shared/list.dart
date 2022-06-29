import '../models/bottom_menu_model.dart';
import '../models/outlets.dart';
import 'package:flutter/material.dart';

class SharedList {
  // Abroad Outlets
  static final List<OutletsModel> outletsAbroadList = [
    OutletsModel(title: "ETSY", text: "ETSY Text"),
    OutletsModel(title: "AliExpress", text: "AliExpress Text"),
    OutletsModel(title: "Ebay", text: "Ebay Text"),
    OutletsModel(title: "Amazon", text: "Amazon Text"),
  ];
  // Domestic Outlets
  static final List<OutletsModel> outletsDomesticList = [
    OutletsModel(title: "Trendyol", text: "Trendyol Text"),
    OutletsModel(title: "Hepsi Burada", text: "Hepsi Burada Text"),
    OutletsModel(title: "Çiçek Sepeti", text: "Çiçek Sepeti Text"),
    OutletsModel(title: "Gitti Gidiyor", text: "Gitti Gidiyor Text"),
    OutletsModel(title: "PTT Avm", text: "Ptt Avm Text"),
    OutletsModel(title: "N11", text: "N11 Text"),
  ];
  // Bottom Menu List
  static final List<BottomMenuModel> bottomMenu = [
    BottomMenuModel(
      icons: Icons.home,
      text: "Anasayfa",
      isSelected: true,
    ),
    BottomMenuModel(
      icons: Icons.shopping_bag,
      text: "Market",
      isSelected: true,
    ),
    BottomMenuModel(
      icons: Icons.favorite,
      text: "Favori",
      isSelected: true,
    ),
    BottomMenuModel(
      icons: Icons.person,
      text: "Hesabım",
      isSelected: true,
    ),
  ];
}
