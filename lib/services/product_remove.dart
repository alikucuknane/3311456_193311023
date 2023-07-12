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

  void removeProductById(String productId) {
    products.removeWhere((product) => product.id == productId);
    print('Ürün sepetten çıkarıldı: $productId');
  }

  double getTotalPrice() {
    double total = 0;
    for (var product in products) {
      total += product.price;
    }
    return total;
  }
}
