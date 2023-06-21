import 'package:e_commerce/models/productreview_model.dart';
import 'package:flutter/material.dart';

class ProductModel {
  final String productName, productDetails;
  final String productSold, productReadyStock;
  final List<Color> productColors;
  final List<String> productSizes;
  final List<ProductReviewModel>? productReviews;
  ProductModel({
    required this.productName,
    required this.productSold,
    required this.productReadyStock,
    required this.productDetails,
    required this.productColors,
    required this.productSizes,
    this.productReviews,
  });
}
