class ProductModel {
  final String productId,
      productName,
      productDescription,
      productMaterial,
      productWeight,
      productionSpeed;
  final String productStock,
      productCost,
      productSalePrice,
      adsValue,
      ecoPlusCargoPrice,
      standartCargoPrice,
      expressCargoPrice;
  final List<String> productPhotos, productCargoPhoto, productProductionPhotos;
  final double minRecommendedPrice, maxRecommendedPrice;
  // Ürün materyal bilgisi, ağırlığı,
  // Ürün şehir kargo, sipariş miktarı, ürün bazında kazanç, kargo bütçesi, reklam bütcesi, üretici fiyatı, kargo hariç %15 + kargo hariç +50, üretici -50%150
  ProductModel(
      {required this.productId,
      required this.productName,
      required this.productDescription,
      required this.productMaterial,
      required this.productWeight,
      required this.productionSpeed,
      required this.productStock,
      required this.productCost,
      required this.productSalePrice,
      required this.adsValue,
      required this.ecoPlusCargoPrice,
      required this.standartCargoPrice,
      required this.expressCargoPrice,
      // Product Photos
      required this.productPhotos,
      required this.productCargoPhoto,
      required this.productProductionPhotos,
      // Recommended Prices
      required this.minRecommendedPrice,
      required this.maxRecommendedPrice});
}
