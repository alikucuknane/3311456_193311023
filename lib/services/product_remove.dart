import '../models/porudct_model.dart';

class Cart {
  List<Product> products = [];

  void addToCart(Product product) {
    products.add(product);
  }

  void removeFromCart(Product product) {
    products.remove(product);
  }

  void removeProductById(String productId) {
    products.removeWhere((product) => product.id == productId);
  }

  double getTotalPrice() {
    double total = 0;
    for (var product in products) {
      total += product.price;
    }
    return total;
  }
}
