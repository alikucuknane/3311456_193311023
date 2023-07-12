import '../models/porudct_model.dart';

class Cart {
  List<Product> products = [];

  void addToCart(Product product) {
    products.add(product);
    print('Ürün sepete eklendi: ${product.name}');
  }

  void removeFromCart(Product product) {
    products.remove(product);
    print('Ürün sepetten çıkarıldı: ${product.name}');
  }

  double getTotalPrice() {
    double total = 0;
    for (var product in products) {
      total += product.price;
    }
    return total;
  }
}
