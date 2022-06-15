// ignore: file_names
import 'package:dogrudan_ticaret_sistemleri/models/dashboard_model.dart';
import 'package:dogrudan_ticaret_sistemleri/models/footer_model.dart';
import 'package:dogrudan_ticaret_sistemleri/models/footer_social.dart';
import 'package:dogrudan_ticaret_sistemleri/models/outlets.dart';
import 'package:dogrudan_ticaret_sistemleri/models/price_menu.dart';
import 'package:dogrudan_ticaret_sistemleri/screens/welcome/welcome.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/services.dart';

class SharedList {
  // Menu
  // Menu List
  static final List<String> menuList = [
    "Anasayfa",
    "Hakkımızda",
    "Hizmetlerimiz",
    "Fiyatlandırma",
    "Kullanıcı  Girişi",
  ];

  // Menu Routing
  // static final List<String> menuRoutuing = [
  //   //WelcomeScreen(),
  //   //"Hakkimizda()",
  //   //"Hizmetlerimiz"
  // ];

  // Services
  // Services List
  static final List<ServicesText> servicesTextsList = [
    ServicesText(
      counter: "01",
      text: "Yurtiçi Ticaret\nDanışmanlığı",
      subText:
          "Yurtiçi ticaretlerinizi sizin adınıza yönetiyor ve\ngerekli ihtiyaçları analiz ediyoruz.",
    ),
    ServicesText(
      counter: "02",
      text: "Yurtdışı Ticaret\nDanışmanlığı",
      subText:
          "Yurtdışı ticaretlerinizi sizin adınıza yönetiyor,\nkargoluyor ve gerekli ihtiyaçları analiz ediyoruz.",
    ),
    ServicesText(
      counter: "03",
      text: "Üretici Danışmanlığı",
      subText:
          "Üretici iseniz; ürünleriniz seçiyoruz, satış\npotansiyeli olan ürünleriniz portfolyolmuza\nekliyor ve satışlarını gerçekleştiriyoruz.",
    ),
  ];

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

  // OUTLET Packets
  // Abroad
  static final List<PriceMenuModel> priceMenuAbroad = [
    /// TODO textler değişecek ve widget gelecek
    PriceMenuModel(title: "Tanışma Paketi", text: [
      "Seçeceğiniz 1 adet\npazaryeri mağazası",
      "Ürün listeleme",
      "SEO Çalışması",
    ]),
    PriceMenuModel(title: "Platin Paket", text: [
      "Seçeceğiniz 1 adet\npazaryeri mağazası",
      "Ürün listeleme",
      "SEO Çalışması",
    ]),
    PriceMenuModel(title: "Gold Paket", text: [
      "Seçeceğiniz 1 adet\npazaryeri mağazası",
      "Ürün listeleme",
      "SEO Çalışması",
    ]),
  ];
  // Domestic
  static final List<PriceMenuModel> priceMenuDomestic = [
    PriceMenuModel(title: "Tanışma Paketi", text: [
      "Seçeceğiniz 1 adet\npazaryeri mağazası",
      "Ürün listeleme",
      "SEO Çalışması",
    ]),
    PriceMenuModel(title: "Platin Paket", text: [
      "Seçeceğiniz 1 adet\npazaryeri mağazası",
      "Ürün listeleme",
      "SEO Çalışması",
    ]),
    PriceMenuModel(title: "Gold Paket", text: [
      "Seçeceğiniz 1 adet\npazaryeri mağazası",
      "Ürün listeleme",
      "SEO Çalışması",
    ]),
  ];

  // Footer
  // Text List
  static final List<FooterModel> footerList = [
    FooterModel(
      title: "Adres",
      subtitle: "Selçuklu/ KONYA",
    ),
    FooterModel(
      title: "Telefon",
      subtitle: "+90 555 555 5555",
    ),
    FooterModel(
      title: "E posta",
      subtitle: "info@dogrudanticaretsistemleri.com",
    ),
  ];
  // Social Media List
  static final List<FooterSocialModel> footerSocialMediaList = [
    FooterSocialModel(icon: FontAwesomeIcons.instagram, url: "Instagram"),
    FooterSocialModel(icon: FontAwesomeIcons.facebook, url: "Facebook"),
    FooterSocialModel(icon: FontAwesomeIcons.youtube, url: "Youtube"),
    // FooterSocialModel(icon: FontAwesomeIcons.twitter, url: "Twitter"), // Maybe we can add?
    FooterSocialModel(icon: FontAwesomeIcons.linkedin, url: "Linkedin"),
  ];

  // Dashboard Menu
  static final List<DashboardModel> dashboardMenuList = [
    DashboardModel(title: "Anasayfa", pushUp: const WelcomeScreen()),
    DashboardModel(title: "Mağazalarım", pushUp: const WelcomeScreen()),
    DashboardModel(title: "Ürünlerim", pushUp: const WelcomeScreen()),
    DashboardModel(title: "Siparişlerim", pushUp: const WelcomeScreen()),
    DashboardModel(title: "Kargo Takip", pushUp: const WelcomeScreen()),
    DashboardModel(title: "Hizmet Satın Al", pushUp: const WelcomeScreen()),
    DashboardModel(title: "Hesabım", pushUp: const WelcomeScreen()),
    // DashboardModel(title: "Anasayfa", pushUp: const WelcomeScreen()),
  ];

  static const List<String> referanceImageRoute = [
    "assets/welcome/referance/referance0.png",
    "assets/welcome/referance/referance1.png",
    "assets/welcome/referance/referance2.png",
  ];
}
